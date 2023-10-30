/* 
 * File:   main.h
 * Author: Ivan_fd
 * 
 *  Регулятор потужності зі стабілізацією.
 * Використовується PDM (Pulse Density Modulation) (Модуляція щільності імпульсів).
 * По другому ще називають, алгоритм Брезенхема.
 *  Використав деякі напрацювання OldBean з форуму
 * https://forum.homedistiller.ru/index.php?topic=218602.0
 * 
 * Created on 18 февраля 2021 г., 10:51
 */
#ifndef MAIN_H
#define	MAIN_H

#include <xc.h> // include processor files - each processor file is guarded. 
#include <stdint.h>
#include <stdio.h>
#include "interrupt.h"
#include "eusart.h"
#include <math.h>
#include "hd44780.h"
#include "key.h"
#include <stdlib.h>
#include "eeprom.h"
#include "ds18b20.h"
#include "onewire.h"

// PIC18F25K20 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1H
#pragma config FOSC = INTIO67   // Oscillator Selection bits (Internal oscillator block, port function on RA6 and RA7)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// CONFIG2L
#pragma config PWRT = ON        // Power-up Timer Enable bit (PWRT enabled)
#pragma config BOREN = SBORDIS  // Brown-out Reset Enable bits (Brown-out Reset enabled in hardware only (SBOREN is disabled))
#pragma config BORV = 18        // Brown Out Reset Voltage bits (VBOR set to 1.8 V nominal)

// CONFIG2H
#pragma config WDTEN = ON      // Watchdog Timer Enable bit (WDT is controlled by SWDTEN bit of the WDTCON register)
#pragma config WDTPS = 2048    // Watchdog Timer Postscale Select bits (1:32768)

// CONFIG3H
#pragma config CCP2MX = PORTBE   // CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
#pragma config PBADEN = OFF     // PORTB A/D Enable bit (PORTB<4:0> pins are configured as digital I/O on Reset)
#pragma config LPT1OSC = OFF    // Low-Power Timer1 Oscillator Enable bit (Timer1 configured for higher power operation)
#pragma config HFOFST = OFF      
#pragma config MCLRE = ON       // MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)

// CONFIG4L
#pragma config STVREN = ON      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = OFF        // Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection Block 0 (Block 0 (000800-001FFFh) not code-protected)
#pragma config CP1 = OFF        // Code Protection Block 1 (Block 1 (002000-003FFFh) not code-protected)
#pragma config CP2 = OFF        // Code Protection Block 2 (Block 2 (004000-005FFFh) not code-protected)
#pragma config CP3 = OFF        // Code Protection Block 3 (Block 3 (006000-007FFFh) not code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot block (000000-0007FFh) not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection Block 0 (Block 0 (000800-001FFFh) not write-protected)
#pragma config WRT1 = OFF       // Write Protection Block 1 (Block 1 (002000-003FFFh) not write-protected)
#pragma config WRT2 = OFF       // Write Protection Block 2 (Block 2 (004000-005FFFh) not write-protected)
#pragma config WRT3 = OFF       // Write Protection Block 3 (Block 3 (006000-007FFFh) not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block (000000-0007FFh) not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection Block 0 (Block 0 (000800-001FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection Block 1 (Block 1 (002000-003FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection Block 2 (Block 2 (004000-005FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection Block 3 (Block 3 (006000-007FFFh) not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot Block (000000-0007FFh) not protected from table reads executed in other blocks)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define _XTAL_FREQ  64000000 // чатота контролера 64МГц

#define VERSION "11.07.22"

#define SetBit(x,y)    do{ x |=  (1 << (y));} while(0)
#define ClrBit(x,y)    do{ x &= ~(1 << (y));} while(0)
#define InvBit(x,y)    do{(x)^=  (1 << (y));} while(0)
#define IsBit(x,y)        (x &   (1 << (y)))
#define TRUE 1
#define FALSE 0

//#define TMR0L_V 76
#define TMR0L_V 57
#define TRIAC LATAbits.LA5 // управління симістором
#define ZERO 50
#define TRIAC_B LATCbits.LATC4
#define SOUND LATCbits.LATC5

#define MIN_WATT 200
#define MAX_WATT 3500

//для енкодера
#define ENC_A_PIN 4 
#define ENC_B_PIN 5
#define ERROR 0x7F
//----------------

#define SQR_U 48400000

// eeprom
#define EE_ADR_R_WHOLE 0
#define EE_ADR_R_FRACT 1
#define EE_ADR_LOAD_POWER 2
#define EE_ADR_ALARM_TEMP 3
//#define EE_ADR_TEMP_L 4
#define EE_ADR_TEMP_EN 4





// головний цикл, вибір
#define SEL_MAIN 0
#define SEL_EDIT_POWER 1
#define SEL_START_POWER 2
#define SEL_EDIT_WHAT 3
#define SEL_EDIT_ALARM 4

extern uint8_t tick_t0, tick_t1, tick_t1_1;
extern uint16_t adc_res;
extern uint32_t U_meas;
extern uint32_t U_summ;
extern uint16_t cnt_adc;
extern uint16_t U_real;
extern uint32_t sqrtU_sum;
extern uint8_t zero;
extern uint8_t getU;
extern uint8_t read_key; // чи можна опитувати кнопки

extern uint8_t power; // рівень потужності 0..100%
extern uint16_t t_power;
extern int16_t err; // помилка дискретизації pdm-модулятора
extern int8_t pp; // умовний признак знаку півперіода (1 - позитивний, -1 - від'ємний)
extern int16_t ps; // ps пропорціональна постійної складової
extern uint16_t sound_delay;
extern uint8_t sound_enable;

extern uint8_t time_flag;
extern uint16_t timer_val;

void init_cpu(void);
int8_t EncPoll( void );
void lcd_preload(void);
void show_lcd_main(void);
uint16_t calc_power(uint8_t pwr, uint32_t res, uint16_t u_rl);

//
#endif	

