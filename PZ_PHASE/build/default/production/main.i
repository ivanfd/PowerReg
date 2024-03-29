
# 1 "main.c"

# 18 "C:/Users/User/.mchp_packs/Microchip/PIC18F-K_DFP/1.6.125/xc8\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 13 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;


# 7 "C:/Users/User/.mchp_packs/Microchip/PIC18F-K_DFP/1.6.125/xc8\pic\include\builtins.h"
#pragma intrinsic(__nop)
extern void __nop(void);


#pragma intrinsic(_delay)
extern __nonreentrant void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(uint8_t);

# 53 "C:/Users/User/.mchp_packs/Microchip/PIC18F-K_DFP/1.6.125/xc8\pic\include\proc\pic18f25k20.h"
extern volatile unsigned char SSPMSK __at(0xF77);

asm("SSPMSK equ 0F77h");


typedef union {
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned MSK :8;
};
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __at(0xF77);

# 123
extern volatile unsigned char SLRCON __at(0xF78);

asm("SLRCON equ 0F78h");


typedef union {
struct {
unsigned SLRA :1;
unsigned SLRB :1;
unsigned SLRC :1;
};
} SLRCONbits_t;
extern volatile SLRCONbits_t SLRCONbits __at(0xF78);

# 155
extern volatile unsigned char CM2CON1 __at(0xF79);

asm("CM2CON1 equ 0F79h");


typedef union {
struct {
unsigned :4;
unsigned C2RSEL :1;
unsigned C1RSEL :1;
unsigned MC2OUT :1;
unsigned MC1OUT :1;
};
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __at(0xF79);

# 194
extern volatile unsigned char CM2CON0 __at(0xF7A);

asm("CM2CON0 equ 0F7Ah");


typedef union {
struct {
unsigned C2CH :2;
unsigned C2R :1;
unsigned C2SP :1;
unsigned C2POL :1;
unsigned C2OE :1;
unsigned C2OUT :1;
unsigned C2ON :1;
};
struct {
unsigned C2CH0 :1;
unsigned C2CH1 :1;
};
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __at(0xF7A);

# 264
extern volatile unsigned char CM1CON0 __at(0xF7B);

asm("CM1CON0 equ 0F7Bh");


typedef union {
struct {
unsigned C1CH :2;
unsigned C1R :1;
unsigned C1SP :1;
unsigned C1POL :1;
unsigned C1OE :1;
unsigned C1OUT :1;
unsigned C1ON :1;
};
struct {
unsigned C1CH0 :1;
unsigned C1CH1 :1;
};
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __at(0xF7B);

# 334
extern volatile unsigned char WPUB __at(0xF7C);

asm("WPUB equ 0F7Ch");


typedef union {
struct {
unsigned WPUB0 :1;
unsigned WPUB1 :1;
unsigned WPUB2 :1;
unsigned WPUB3 :1;
unsigned WPUB4 :1;
unsigned WPUB5 :1;
unsigned WPUB6 :1;
unsigned WPUB7 :1;
};
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __at(0xF7C);

# 396
extern volatile unsigned char IOCB __at(0xF7D);

asm("IOCB equ 0F7Dh");


typedef union {
struct {
unsigned :4;
unsigned IOCB4 :1;
unsigned IOCB5 :1;
unsigned IOCB6 :1;
unsigned IOCB7 :1;
};
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __at(0xF7D);

# 435
extern volatile unsigned char ANSEL __at(0xF7E);

asm("ANSEL equ 0F7Eh");


typedef union {
struct {
unsigned ANS0 :1;
unsigned ANS1 :1;
unsigned ANS2 :1;
unsigned ANS3 :1;
unsigned ANS4 :1;
};
} ANSELbits_t;
extern volatile ANSELbits_t ANSELbits __at(0xF7E);

# 479
extern volatile unsigned char ANSELH __at(0xF7F);

asm("ANSELH equ 0F7Fh");


typedef union {
struct {
unsigned ANS8 :1;
unsigned ANS9 :1;
unsigned ANS10 :1;
unsigned ANS11 :1;
unsigned ANS12 :1;
};
} ANSELHbits_t;
extern volatile ANSELHbits_t ANSELHbits __at(0xF7F);

# 523
extern volatile unsigned char PORTA __at(0xF80);

asm("PORTA equ 0F80h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
struct {
unsigned AN0 :1;
unsigned AN1 :1;
unsigned AN2 :1;
unsigned AN3 :1;
unsigned :1;
unsigned AN4 :1;
};
struct {
unsigned C12IN0M :1;
unsigned C12IN1M :1;
unsigned C2INP :1;
unsigned C1INP :1;
unsigned C1OUT :1;
unsigned C2OUT :1;
};
struct {
unsigned C12IN0N :1;
unsigned C12IN1N :1;
unsigned VREFM :1;
unsigned VREFP :1;
unsigned T0CKI :1;
unsigned SS :1;
};
struct {
unsigned :5;
unsigned NOT_SS :1;
};
struct {
unsigned :2;
unsigned VREFN :1;
unsigned :2;
unsigned nSS :1;
};
struct {
unsigned :2;
unsigned CVREF :1;
unsigned :2;
unsigned LVDIN :1;
};
struct {
unsigned :5;
unsigned HLVDIN :1;
};
struct {
unsigned ULPWUIN :1;
unsigned :6;
unsigned RJPU :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0xF80);

# 759
extern volatile unsigned char PORTB __at(0xF81);

asm("PORTB equ 0F81h");


typedef union {
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
struct {
unsigned INT0 :1;
unsigned INT1 :1;
unsigned INT2 :1;
unsigned CCP2 :1;
unsigned KBI0 :1;
unsigned KBI1 :1;
unsigned KBI2 :1;
unsigned KBI3 :1;
};
struct {
unsigned AN12 :1;
unsigned AN10 :1;
unsigned AN8 :1;
unsigned AN9 :1;
unsigned AN11 :1;
unsigned PGM :1;
unsigned PGC :1;
unsigned PGD :1;
};
struct {
unsigned FLT0 :1;
unsigned C12IN3M :1;
unsigned :1;
unsigned C12IN2M :1;
};
struct {
unsigned :1;
unsigned C12IN3N :1;
unsigned :1;
unsigned C12IN2N :1;
};
struct {
unsigned :1;
unsigned P1C :1;
unsigned P1B :1;
unsigned :1;
unsigned P1D :1;
};
struct {
unsigned :3;
unsigned CCP2_PA2 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0xF81);

# 989
extern volatile unsigned char PORTC __at(0xF82);

asm("PORTC equ 0F82h");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
struct {
unsigned T1OSO :1;
unsigned T1OSI :1;
unsigned CCP1 :1;
unsigned SCK :1;
unsigned SDI :1;
unsigned SDO :1;
unsigned TX :1;
unsigned RX :1;
};
struct {
unsigned T13CKI :1;
unsigned CCP2 :1;
unsigned P1A :1;
unsigned SCL :1;
unsigned SDA :1;
unsigned :1;
unsigned CK :1;
unsigned DT :1;
};
struct {
unsigned T1CKI :1;
};
struct {
unsigned T3CKI :1;
};
struct {
unsigned :1;
unsigned PA2 :1;
unsigned PA1 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0xF82);

# 1177
extern volatile unsigned char PORTE __at(0xF84);

asm("PORTE equ 0F84h");


typedef union {
struct {
unsigned :3;
unsigned RE3 :1;
};
struct {
unsigned :3;
unsigned MCLR :1;
};
struct {
unsigned :3;
unsigned NOT_MCLR :1;
};
struct {
unsigned :3;
unsigned nMCLR :1;
};
struct {
unsigned :3;
unsigned VPP :1;
};
struct {
unsigned :3;
unsigned CCP9E :1;
};
struct {
unsigned :3;
unsigned PC3E :1;
};
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __at(0xF84);

# 1252
extern volatile unsigned char LATA __at(0xF89);

asm("LATA equ 0F89h");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned LATA3 :1;
unsigned LATA4 :1;
unsigned LATA5 :1;
unsigned LATA6 :1;
unsigned LATA7 :1;
};
struct {
unsigned LA0 :1;
unsigned LA1 :1;
unsigned LA2 :1;
unsigned LA3 :1;
unsigned LA4 :1;
unsigned LA5 :1;
unsigned LA6 :1;
unsigned LA7 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0xF89);

# 1364
extern volatile unsigned char LATB __at(0xF8A);

asm("LATB equ 0F8Ah");


typedef union {
struct {
unsigned LATB0 :1;
unsigned LATB1 :1;
unsigned LATB2 :1;
unsigned LATB3 :1;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
struct {
unsigned LB0 :1;
unsigned LB1 :1;
unsigned LB2 :1;
unsigned LB3 :1;
unsigned LB4 :1;
unsigned LB5 :1;
unsigned LB6 :1;
unsigned LB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0xF8A);

# 1476
extern volatile unsigned char LATC __at(0xF8B);

asm("LATC equ 0F8Bh");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned LATC3 :1;
unsigned LATC4 :1;
unsigned LATC5 :1;
unsigned LATC6 :1;
unsigned LATC7 :1;
};
struct {
unsigned LC0 :1;
unsigned LC1 :1;
unsigned LC2 :1;
unsigned LC3 :1;
unsigned LC4 :1;
unsigned LC5 :1;
unsigned LC6 :1;
unsigned LC7 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0xF8B);

# 1588
extern volatile unsigned char TRISA __at(0xF92);

asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __at(0xF92);

asm("DDRA equ 0F92h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0xF92);

# 1703
typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __at(0xF92);

# 1810
extern volatile unsigned char TRISB __at(0xF93);

asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __at(0xF93);

asm("DDRB equ 0F93h");


typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0xF93);

# 1925
typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __at(0xF93);

# 2032
extern volatile unsigned char TRISC __at(0xF94);

asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __at(0xF94);

asm("DDRC equ 0F94h");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0xF94);

# 2147
typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __at(0xF94);

# 2254
extern volatile unsigned char OSCTUNE __at(0xF9B);

asm("OSCTUNE equ 0F9Bh");


typedef union {
struct {
unsigned TUN :6;
unsigned PLLEN :1;
unsigned INTSRC :1;
};
struct {
unsigned TUN0 :1;
unsigned TUN1 :1;
unsigned TUN2 :1;
unsigned TUN3 :1;
unsigned TUN4 :1;
unsigned TUN5 :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0xF9B);

# 2324
extern volatile unsigned char PIE1 __at(0xF9D);

asm("PIE1 equ 0F9Dh");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
unsigned CCP1IE :1;
unsigned SSPIE :1;
unsigned TXIE :1;
unsigned RCIE :1;
unsigned ADIE :1;
};
struct {
unsigned :4;
unsigned TX1IE :1;
unsigned RC1IE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0xF9D);

# 2395
extern volatile unsigned char PIR1 __at(0xF9E);

asm("PIR1 equ 0F9Eh");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
unsigned CCP1IF :1;
unsigned SSPIF :1;
unsigned TXIF :1;
unsigned RCIF :1;
unsigned ADIF :1;
};
struct {
unsigned :4;
unsigned TX1IF :1;
unsigned RC1IF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0xF9E);

# 2466
extern volatile unsigned char IPR1 __at(0xF9F);

asm("IPR1 equ 0F9Fh");


typedef union {
struct {
unsigned TMR1IP :1;
unsigned TMR2IP :1;
unsigned CCP1IP :1;
unsigned SSPIP :1;
unsigned TXIP :1;
unsigned RCIP :1;
unsigned ADIP :1;
};
struct {
unsigned :4;
unsigned TX1IP :1;
unsigned RC1IP :1;
};
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __at(0xF9F);

# 2537
extern volatile unsigned char PIE2 __at(0xFA0);

asm("PIE2 equ 0FA0h");


typedef union {
struct {
unsigned CCP2IE :1;
unsigned TMR3IE :1;
unsigned HLVDIE :1;
unsigned BCLIE :1;
unsigned EEIE :1;
unsigned C2IE :1;
unsigned C1IE :1;
unsigned OSCFIE :1;
};
struct {
unsigned :2;
unsigned LVDIE :1;
};
struct {
unsigned :6;
unsigned CMIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0xFA0);

# 2617
extern volatile unsigned char PIR2 __at(0xFA1);

asm("PIR2 equ 0FA1h");


typedef union {
struct {
unsigned CCP2IF :1;
unsigned TMR3IF :1;
unsigned HLVDIF :1;
unsigned BCLIF :1;
unsigned EEIF :1;
unsigned C2IF :1;
unsigned C1IF :1;
unsigned OSCFIF :1;
};
struct {
unsigned :2;
unsigned LVDIF :1;
};
struct {
unsigned :6;
unsigned CMIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0xFA1);

# 2697
extern volatile unsigned char IPR2 __at(0xFA2);

asm("IPR2 equ 0FA2h");


typedef union {
struct {
unsigned CCP2IP :1;
unsigned TMR3IP :1;
unsigned HLVDIP :1;
unsigned BCLIP :1;
unsigned EEIP :1;
unsigned C2IP :1;
unsigned C1IP :1;
unsigned OSCFIP :1;
};
struct {
unsigned :2;
unsigned LVDIP :1;
};
struct {
unsigned :6;
unsigned CMIP :1;
};
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __at(0xFA2);

# 2777
extern volatile unsigned char EECON1 __at(0xFA6);

asm("EECON1 equ 0FA6h");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned :1;
unsigned CFGS :1;
unsigned EEPGD :1;
};
struct {
unsigned :6;
unsigned EEFS :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0xFA6);

# 2843
extern volatile unsigned char EECON2 __at(0xFA7);

asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __at(0xFA8);

asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __at(0xFA9);

asm("EEADR equ 0FA9h");


typedef union {
struct {
unsigned EEADR0 :1;
unsigned EEADR1 :1;
unsigned EEADR2 :1;
unsigned EEADR3 :1;
unsigned EEADR4 :1;
unsigned EEADR5 :1;
unsigned EEADR6 :1;
unsigned EEADR7 :1;
};
} EEADRbits_t;
extern volatile EEADRbits_t EEADRbits __at(0xFA9);

# 2919
extern volatile unsigned char RCSTA __at(0xFAB);

asm("RCSTA equ 0FABh");


extern volatile unsigned char RCSTA1 __at(0xFAB);

asm("RCSTA1 equ 0FABh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADEN :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned RCD8 :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0xFAB);

# 3028
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADEN :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned RCD8 :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0xFAB);

# 3129
extern volatile unsigned char TXSTA __at(0xFAC);

asm("TXSTA equ 0FACh");


extern volatile unsigned char TXSTA1 __at(0xFAC);

asm("TXSTA1 equ 0FACh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned TXD8 :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0xFAC);

# 3261
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned TXD8 :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0xFAC);

# 3385
extern volatile unsigned char TXREG __at(0xFAD);

asm("TXREG equ 0FADh");


extern volatile unsigned char TXREG1 __at(0xFAD);

asm("TXREG1 equ 0FADh");




extern volatile unsigned char RCREG __at(0xFAE);

asm("RCREG equ 0FAEh");


extern volatile unsigned char RCREG1 __at(0xFAE);

asm("RCREG1 equ 0FAEh");




extern volatile unsigned char SPBRG __at(0xFAF);

asm("SPBRG equ 0FAFh");


extern volatile unsigned char SPBRG1 __at(0xFAF);

asm("SPBRG1 equ 0FAFh");




extern volatile unsigned char SPBRGH __at(0xFB0);

asm("SPBRGH equ 0FB0h");




extern volatile unsigned char T3CON __at(0xFB1);

asm("T3CON equ 0FB1h");


typedef union {
struct {
unsigned :2;
unsigned NOT_T3SYNC :1;
};
struct {
unsigned TMR3ON :1;
unsigned TMR3CS :1;
unsigned nT3SYNC :1;
unsigned T3CCP1 :1;
unsigned T3CKPS :2;
unsigned T3CCP2 :1;
unsigned RD16 :1;
};
struct {
unsigned :2;
unsigned T3SYNC :1;
unsigned :1;
unsigned T3CKPS0 :1;
unsigned T3CKPS1 :1;
};
struct {
unsigned :3;
unsigned SOSCEN3 :1;
unsigned :3;
unsigned RD163 :1;
};
struct {
unsigned :7;
unsigned T3RD16 :1;
};
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __at(0xFB1);

# 3540
extern volatile unsigned short TMR3 __at(0xFB2);

asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __at(0xFB2);

asm("TMR3L equ 0FB2h");




extern volatile unsigned char TMR3H __at(0xFB3);

asm("TMR3H equ 0FB3h");




extern volatile unsigned char CVRCON2 __at(0xFB4);

asm("CVRCON2 equ 0FB4h");


typedef union {
struct {
unsigned :6;
unsigned FVRST :1;
unsigned FVREN :1;
};
} CVRCON2bits_t;
extern volatile CVRCON2bits_t CVRCON2bits __at(0xFB4);

# 3588
extern volatile unsigned char CVRCON __at(0xFB5);

asm("CVRCON equ 0FB5h");


typedef union {
struct {
unsigned CVR :4;
unsigned CVRSS :1;
unsigned CVRR :1;
unsigned CVROE :1;
unsigned CVREN :1;
};
struct {
unsigned CVR0 :1;
unsigned CVR1 :1;
unsigned CVR2 :1;
unsigned CVR3 :1;
};
struct {
unsigned :6;
unsigned CVROEN :1;
};
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __at(0xFB5);

# 3667
extern volatile unsigned char ECCP1AS __at(0xFB6);

asm("ECCP1AS equ 0FB6h");


typedef union {
struct {
unsigned PSSBD :2;
unsigned PSSAC :2;
unsigned ECCPAS :3;
unsigned ECCPASE :1;
};
struct {
unsigned PSSBD0 :1;
unsigned PSSBD1 :1;
unsigned PSSAC0 :1;
unsigned PSSAC1 :1;
unsigned ECCPAS0 :1;
unsigned ECCPAS1 :1;
unsigned ECCPAS2 :1;
};
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __at(0xFB6);

# 3749
extern volatile unsigned char PWM1CON __at(0xFB7);

asm("PWM1CON equ 0FB7h");


typedef union {
struct {
unsigned PDC :7;
unsigned PRSEN :1;
};
struct {
unsigned PDC0 :1;
unsigned PDC1 :1;
unsigned PDC2 :1;
unsigned PDC3 :1;
unsigned PDC4 :1;
unsigned PDC5 :1;
unsigned PDC6 :1;
};
} PWM1CONbits_t;
extern volatile PWM1CONbits_t PWM1CONbits __at(0xFB7);

# 3819
extern volatile unsigned char BAUDCON __at(0xFB8);

asm("BAUDCON equ 0FB8h");


extern volatile unsigned char BAUDCTL __at(0xFB8);

asm("BAUDCTL equ 0FB8h");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned CKTXP :1;
unsigned DTRXP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0xFB8);

# 3906
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned CKTXP :1;
unsigned DTRXP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __at(0xFB8);

# 3985
extern volatile unsigned char PSTRCON __at(0xFB9);

asm("PSTRCON equ 0FB9h");


typedef union {
struct {
unsigned STRA :1;
unsigned STRB :1;
unsigned STRC :1;
unsigned STRD :1;
unsigned STRSYNC :1;
};
} PSTRCONbits_t;
extern volatile PSTRCONbits_t PSTRCONbits __at(0xFB9);

# 4029
extern volatile unsigned char CCP2CON __at(0xFBA);

asm("CCP2CON equ 0FBAh");


typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
};
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __at(0xFBA);

# 4093
extern volatile unsigned short CCPR2 __at(0xFBB);

asm("CCPR2 equ 0FBBh");




extern volatile unsigned char CCPR2L __at(0xFBB);

asm("CCPR2L equ 0FBBh");




extern volatile unsigned char CCPR2H __at(0xFBC);

asm("CCPR2H equ 0FBCh");




extern volatile unsigned char CCP1CON __at(0xFBD);

asm("CCP1CON equ 0FBDh");


typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
unsigned P1M :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
unsigned P1M0 :1;
unsigned P1M1 :1;
};
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __at(0xFBD);

# 4196
extern volatile unsigned short CCPR1 __at(0xFBE);

asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __at(0xFBE);

asm("CCPR1L equ 0FBEh");




extern volatile unsigned char CCPR1H __at(0xFBF);

asm("CCPR1H equ 0FBFh");




extern volatile unsigned char ADCON2 __at(0xFC0);

asm("ADCON2 equ 0FC0h");


typedef union {
struct {
unsigned ADCS :3;
unsigned ACQT :3;
unsigned :1;
unsigned ADFM :1;
};
struct {
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
unsigned ACQT0 :1;
unsigned ACQT1 :1;
unsigned ACQT2 :1;
};
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __at(0xFC0);

# 4288
extern volatile unsigned char ADCON1 __at(0xFC1);

asm("ADCON1 equ 0FC1h");


typedef union {
struct {
unsigned :4;
unsigned VCFG :2;
};
struct {
unsigned :4;
unsigned VCFG0 :1;
unsigned VCFG1 :1;
};
struct {
unsigned :4;
unsigned VCFG01 :1;
unsigned VCFG11 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0xFC1);

# 4339
extern volatile unsigned char ADCON0 __at(0xFC2);

asm("ADCON0 equ 0FC2h");


typedef union {
struct {
unsigned :1;
unsigned GO_NOT_DONE :1;
};
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :4;
};
struct {
unsigned :1;
unsigned DONE :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
unsigned CHS2 :1;
unsigned CHS3 :1;
};
struct {
unsigned :1;
unsigned NOT_DONE :1;
};
struct {
unsigned :1;
unsigned nDONE :1;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
struct {
unsigned :1;
unsigned GODONE :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0xFC2);

# 4458
extern volatile unsigned short ADRES __at(0xFC3);

asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __at(0xFC3);

asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __at(0xFC4);

asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSPCON2 __at(0xFC5);

asm("SSPCON2 equ 0FC5h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __at(0xFC5);

# 4541
extern volatile unsigned char SSPCON1 __at(0xFC6);

asm("SSPCON1 equ 0FC6h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __at(0xFC6);

# 4611
extern volatile unsigned char SSPSTAT __at(0xFC7);

asm("SSPSTAT equ 0FC7h");


typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned :2;
unsigned D :1;
};
struct {
unsigned :2;
unsigned W :1;
unsigned :2;
unsigned A :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :3;
unsigned START :1;
unsigned STOP :1;
};
struct {
unsigned :2;
unsigned RW :1;
unsigned :2;
unsigned DA :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
unsigned :2;
unsigned NOT_A :1;
};
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __at(0xFC7);

# 4836
extern volatile unsigned char SSPADD __at(0xFC8);

asm("SSPADD equ 0FC8h");




extern volatile unsigned char SSPBUF __at(0xFC9);

asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __at(0xFCA);

asm("T2CON equ 0FCAh");


typedef union {
struct {
unsigned T2CKPS :2;
unsigned TMR2ON :1;
unsigned T2OUTPS :4;
};
struct {
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned :1;
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0xFCA);

# 4921
extern volatile unsigned char PR2 __at(0xFCB);

asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __at(0xFCB);

asm("MEMCON equ 0FCBh");


typedef union {
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} PR2bits_t;
extern volatile PR2bits_t PR2bits __at(0xFCB);

# 4980
typedef union {
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __at(0xFCB);

# 5031
extern volatile unsigned char TMR2 __at(0xFCC);

asm("TMR2 equ 0FCCh");




extern volatile unsigned char T1CON __at(0xFCD);

asm("T1CON equ 0FCDh");


typedef union {
struct {
unsigned :2;
unsigned NOT_T1SYNC :1;
};
struct {
unsigned TMR1ON :1;
unsigned TMR1CS :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned T1RUN :1;
unsigned RD16 :1;
};
struct {
unsigned :2;
unsigned T1SYNC :1;
unsigned :1;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
};
struct {
unsigned :3;
unsigned SOSCEN :1;
unsigned :3;
unsigned T1RD16 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0xFCD);

# 5141
extern volatile unsigned short TMR1 __at(0xFCE);

asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __at(0xFCE);

asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __at(0xFCF);

asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __at(0xFD0);

asm("RCON equ 0FD0h");


typedef union {
struct {
unsigned NOT_BOR :1;
};
struct {
unsigned :1;
unsigned NOT_POR :1;
};
struct {
unsigned :2;
unsigned NOT_PD :1;
};
struct {
unsigned :3;
unsigned NOT_TO :1;
};
struct {
unsigned :4;
unsigned NOT_RI :1;
};
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned nRI :1;
unsigned :1;
unsigned SBOREN :1;
unsigned IPEN :1;
};
struct {
unsigned BOR :1;
unsigned POR :1;
unsigned PD :1;
unsigned TO :1;
unsigned RI :1;
};
} RCONbits_t;
extern volatile RCONbits_t RCONbits __at(0xFD0);

# 5295
extern volatile unsigned char WDTCON __at(0xFD1);

asm("WDTCON equ 0FD1h");


typedef union {
struct {
unsigned SWDTEN :1;
};
struct {
unsigned SWDTE :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0xFD1);

# 5323
extern volatile unsigned char HLVDCON __at(0xFD2);

asm("HLVDCON equ 0FD2h");


extern volatile unsigned char LVDCON __at(0xFD2);

asm("LVDCON equ 0FD2h");


typedef union {
struct {
unsigned HLVDL :4;
unsigned HLVDEN :1;
unsigned IRVST :1;
unsigned :1;
unsigned VDIRMAG :1;
};
struct {
unsigned HLVDL0 :1;
unsigned HLVDL1 :1;
unsigned HLVDL2 :1;
unsigned HLVDL3 :1;
};
struct {
unsigned LVDL0 :1;
unsigned LVDL1 :1;
unsigned LVDL2 :1;
unsigned LVDL3 :1;
unsigned LVDEN :1;
unsigned IVRST :1;
};
struct {
unsigned LVV0 :1;
unsigned LVV1 :1;
unsigned LVV2 :1;
unsigned LVV3 :1;
unsigned :1;
unsigned BGST :1;
};
} HLVDCONbits_t;
extern volatile HLVDCONbits_t HLVDCONbits __at(0xFD2);

# 5462
typedef union {
struct {
unsigned HLVDL :4;
unsigned HLVDEN :1;
unsigned IRVST :1;
unsigned :1;
unsigned VDIRMAG :1;
};
struct {
unsigned HLVDL0 :1;
unsigned HLVDL1 :1;
unsigned HLVDL2 :1;
unsigned HLVDL3 :1;
};
struct {
unsigned LVDL0 :1;
unsigned LVDL1 :1;
unsigned LVDL2 :1;
unsigned LVDL3 :1;
unsigned LVDEN :1;
unsigned IVRST :1;
};
struct {
unsigned LVV0 :1;
unsigned LVV1 :1;
unsigned LVV2 :1;
unsigned LVV3 :1;
unsigned :1;
unsigned BGST :1;
};
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __at(0xFD2);

# 5593
extern volatile unsigned char OSCCON __at(0xFD3);

asm("OSCCON equ 0FD3h");


typedef union {
struct {
unsigned SCS :2;
unsigned IOFS :1;
unsigned OSTS :1;
unsigned IRCF :3;
unsigned IDLEN :1;
};
struct {
unsigned SCS0 :1;
unsigned SCS1 :1;
unsigned :2;
unsigned IRCF0 :1;
unsigned IRCF1 :1;
unsigned IRCF2 :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0xFD3);

# 5670
extern volatile unsigned char T0CON __at(0xFD5);

asm("T0CON equ 0FD5h");


typedef union {
struct {
unsigned T0PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned T08BIT :1;
unsigned TMR0ON :1;
};
struct {
unsigned T0PS0 :1;
unsigned T0PS1 :1;
unsigned T0PS2 :1;
};
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __at(0xFD5);

# 5740
extern volatile unsigned short TMR0 __at(0xFD6);

asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __at(0xFD6);

asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __at(0xFD7);

asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __at(0xFD8);

asm("STATUS equ 0FD8h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned OV :1;
unsigned N :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
unsigned OVERFLOW :1;
unsigned NEGATIVE :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0xFD8);

# 5832
extern volatile unsigned short FSR2 __at(0xFD9);

asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __at(0xFD9);

asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __at(0xFDA);

asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __at(0xFDB);

asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __at(0xFDC);

asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __at(0xFDD);

asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __at(0xFDE);

asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __at(0xFDF);

asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __at(0xFE0);

asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __at(0xFE1);

asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __at(0xFE1);

asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __at(0xFE2);

asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __at(0xFE3);

asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __at(0xFE4);

asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __at(0xFE5);

asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __at(0xFE6);

asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __at(0xFE7);

asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __at(0xFE8);

asm("WREG equ 0FE8h");

# 5963
extern volatile unsigned short FSR0 __at(0xFE9);

asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __at(0xFE9);

asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __at(0xFEA);

asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __at(0xFEB);

asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __at(0xFEC);

asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __at(0xFED);

asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __at(0xFEE);

asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __at(0xFEF);

asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __at(0xFF0);

asm("INTCON3 equ 0FF0h");


typedef union {
struct {
unsigned INT1IF :1;
unsigned INT2IF :1;
unsigned :1;
unsigned INT1IE :1;
unsigned INT2IE :1;
unsigned :1;
unsigned INT1IP :1;
unsigned INT2IP :1;
};
struct {
unsigned INT1F :1;
unsigned INT2F :1;
unsigned :1;
unsigned INT1E :1;
unsigned INT2E :1;
unsigned :1;
unsigned INT1P :1;
unsigned INT2P :1;
};
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __at(0xFF0);

# 6111
extern volatile unsigned char INTCON2 __at(0xFF1);

asm("INTCON2 equ 0FF1h");


typedef union {
struct {
unsigned :7;
unsigned NOT_RBPU :1;
};
struct {
unsigned RBIP :1;
unsigned :1;
unsigned TMR0IP :1;
unsigned :1;
unsigned INTEDG2 :1;
unsigned INTEDG1 :1;
unsigned INTEDG0 :1;
unsigned nRBPU :1;
};
struct {
unsigned :7;
unsigned RBPU :1;
};
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __at(0xFF1);

# 6181
extern volatile unsigned char INTCON __at(0xFF2);

asm("INTCON equ 0FF2h");


typedef union {
struct {
unsigned RBIF :1;
unsigned INT0IF :1;
unsigned TMR0IF :1;
unsigned RBIE :1;
unsigned INT0IE :1;
unsigned TMR0IE :1;
unsigned PEIE_GIEL :1;
unsigned GIE_GIEH :1;
};
struct {
unsigned :1;
unsigned INT0F :1;
unsigned T0IF :1;
unsigned :1;
unsigned INT0E :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :6;
unsigned GIEL :1;
unsigned GIEH :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0xFF2);

# 6298
extern volatile unsigned short PROD __at(0xFF3);

asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __at(0xFF3);

asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __at(0xFF4);

asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __at(0xFF5);

asm("TABLAT equ 0FF5h");

# 6327
extern volatile __uint24 TBLPTR __at(0xFF6);


asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __at(0xFF6);

asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __at(0xFF7);

asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __at(0xFF8);

asm("TBLPTRU equ 0FF8h");

# 6357
extern volatile __uint24 PCLAT __at(0xFF9);


asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __at(0xFF9);


asm("PC equ 0FF9h");




extern volatile unsigned char PCL __at(0xFF9);

asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __at(0xFFA);

asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __at(0xFFB);

asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __at(0xFFC);

asm("STKPTR equ 0FFCh");


typedef union {
struct {
unsigned STKPTR :5;
unsigned :1;
unsigned STKUNF :1;
unsigned STKFUL :1;
};
struct {
unsigned SP0 :1;
unsigned SP1 :1;
unsigned SP2 :1;
unsigned SP3 :1;
unsigned SP4 :1;
unsigned :2;
unsigned STKOVF :1;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFFC);

# 6466
extern volatile __uint24 TOS __at(0xFFD);


asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __at(0xFFD);

asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __at(0xFFE);

asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __at(0xFFF);

asm("TOSU equ 0FFFh");

# 6505
extern volatile __bit ABDEN __at(0x7DC0);


extern volatile __bit ABDOVF __at(0x7DC7);


extern volatile __bit ACKDT __at(0x7E2D);


extern volatile __bit ACKEN __at(0x7E2C);


extern volatile __bit ACKSTAT __at(0x7E2E);


extern volatile __bit ACQT0 __at(0x7E03);


extern volatile __bit ACQT1 __at(0x7E04);


extern volatile __bit ACQT2 __at(0x7E05);


extern volatile __bit ADCS0 __at(0x7E00);


extern volatile __bit ADCS1 __at(0x7E01);


extern volatile __bit ADCS2 __at(0x7E02);


extern volatile __bit ADDEN __at(0x7D5B);


extern volatile __bit ADEN __at(0x7D5B);


extern volatile __bit ADFM __at(0x7E07);


extern volatile __bit ADIE __at(0x7CEE);


extern volatile __bit ADIF __at(0x7CF6);


extern volatile __bit ADIP __at(0x7CFE);


extern volatile __bit ADON __at(0x7E10);


extern volatile __bit AN0 __at(0x7C00);


extern volatile __bit AN1 __at(0x7C01);


extern volatile __bit AN10 __at(0x7C09);


extern volatile __bit AN11 __at(0x7C0C);


extern volatile __bit AN12 __at(0x7C08);


extern volatile __bit AN2 __at(0x7C02);


extern volatile __bit AN3 __at(0x7C03);


extern volatile __bit AN4 __at(0x7C05);


extern volatile __bit AN8 __at(0x7C0A);


extern volatile __bit AN9 __at(0x7C0B);


extern volatile __bit ANS0 __at(0x7BF0);


extern volatile __bit ANS1 __at(0x7BF1);


extern volatile __bit ANS10 __at(0x7BFA);


extern volatile __bit ANS11 __at(0x7BFB);


extern volatile __bit ANS12 __at(0x7BFC);


extern volatile __bit ANS2 __at(0x7BF2);


extern volatile __bit ANS3 __at(0x7BF3);


extern volatile __bit ANS4 __at(0x7BF4);


extern volatile __bit ANS8 __at(0x7BF8);


extern volatile __bit ANS9 __at(0x7BF9);


extern volatile __bit BCLIE __at(0x7D03);


extern volatile __bit BCLIF __at(0x7D0B);


extern volatile __bit BCLIP __at(0x7D13);


extern volatile __bit BF __at(0x7E38);


extern volatile __bit BGST __at(0x7E95);


extern volatile __bit BOR __at(0x7E80);


extern volatile __bit BRG16 __at(0x7DC3);


extern volatile __bit BRGH __at(0x7D62);


extern volatile __bit BRGH1 __at(0x7D62);


extern volatile __bit C12IN0M __at(0x7C00);


extern volatile __bit C12IN0N __at(0x7C00);


extern volatile __bit C12IN1M __at(0x7C01);


extern volatile __bit C12IN1N __at(0x7C01);


extern volatile __bit C12IN2M __at(0x7C0B);


extern volatile __bit C12IN2N __at(0x7C0B);


extern volatile __bit C12IN3M __at(0x7C09);


extern volatile __bit C12IN3N __at(0x7C09);


extern volatile __bit C1CH0 __at(0x7BD8);


extern volatile __bit C1CH1 __at(0x7BD9);


extern volatile __bit C1IE __at(0x7D06);


extern volatile __bit C1IF __at(0x7D0E);


extern volatile __bit C1INP __at(0x7C03);


extern volatile __bit C1IP __at(0x7D16);


extern volatile __bit C1OE __at(0x7BDD);


extern volatile __bit C1ON __at(0x7BDF);


extern volatile __bit __attribute__((__deprecated__)) C1OUT __at(0x7BDE);


extern volatile __bit C1POL __at(0x7BDC);


extern volatile __bit C1R __at(0x7BDA);


extern volatile __bit C1RSEL __at(0x7BCD);


extern volatile __bit C1SP __at(0x7BDB);


extern volatile __bit C2CH0 __at(0x7BD0);


extern volatile __bit C2CH1 __at(0x7BD1);


extern volatile __bit C2IE __at(0x7D05);


extern volatile __bit C2IF __at(0x7D0D);


extern volatile __bit C2INP __at(0x7C02);


extern volatile __bit C2IP __at(0x7D15);


extern volatile __bit C2OE __at(0x7BD5);


extern volatile __bit C2ON __at(0x7BD7);


extern volatile __bit __attribute__((__deprecated__)) C2OUT __at(0x7BD6);


extern volatile __bit C2POL __at(0x7BD4);


extern volatile __bit C2R __at(0x7BD2);


extern volatile __bit C2RSEL __at(0x7BCC);


extern volatile __bit C2SP __at(0x7BD3);


extern volatile __bit CARRY __at(0x7EC0);


extern volatile __bit CCP1 __at(0x7C12);


extern volatile __bit CCP1IE __at(0x7CEA);


extern volatile __bit CCP1IF __at(0x7CF2);


extern volatile __bit CCP1IP __at(0x7CFA);


extern volatile __bit CCP1M0 __at(0x7DE8);


extern volatile __bit CCP1M1 __at(0x7DE9);


extern volatile __bit CCP1M2 __at(0x7DEA);


extern volatile __bit CCP1M3 __at(0x7DEB);


extern volatile __bit CCP2IE __at(0x7D00);


extern volatile __bit CCP2IF __at(0x7D08);


extern volatile __bit CCP2IP __at(0x7D10);


extern volatile __bit CCP2M0 __at(0x7DD0);


extern volatile __bit CCP2M1 __at(0x7DD1);


extern volatile __bit CCP2M2 __at(0x7DD2);


extern volatile __bit CCP2M3 __at(0x7DD3);


extern volatile __bit CCP2_PA2 __at(0x7C0B);


extern volatile __bit CCP9E __at(0x7C23);


extern volatile __bit CFGS __at(0x7D36);


extern volatile __bit CHS0 __at(0x7E12);


extern volatile __bit CHS1 __at(0x7E13);


extern volatile __bit CHS2 __at(0x7E14);


extern volatile __bit CHS3 __at(0x7E15);


extern volatile __bit CK __at(0x7C16);


extern volatile __bit CKE __at(0x7E3E);


extern volatile __bit CKP __at(0x7E34);


extern volatile __bit CKTXP __at(0x7DC4);


extern volatile __bit CMIE __at(0x7D06);


extern volatile __bit CMIF __at(0x7D0E);


extern volatile __bit CMIP __at(0x7D16);


extern volatile __bit CREN __at(0x7D5C);


extern volatile __bit CSRC __at(0x7D67);


extern volatile __bit CSRC1 __at(0x7D67);


extern volatile __bit CVR0 __at(0x7DA8);


extern volatile __bit CVR1 __at(0x7DA9);


extern volatile __bit CVR2 __at(0x7DAA);


extern volatile __bit CVR3 __at(0x7DAB);


extern volatile __bit CVREF __at(0x7C02);


extern volatile __bit CVREN __at(0x7DAF);


extern volatile __bit CVROE __at(0x7DAE);


extern volatile __bit CVROEN __at(0x7DAE);


extern volatile __bit CVRR __at(0x7DAD);


extern volatile __bit CVRSS __at(0x7DAC);


extern volatile __bit DA __at(0x7E3D);


extern volatile __bit DC __at(0x7EC1);


extern volatile __bit DC1B0 __at(0x7DEC);


extern volatile __bit DC1B1 __at(0x7DED);


extern volatile __bit DC2B0 __at(0x7DD4);


extern volatile __bit DC2B1 __at(0x7DD5);


extern volatile __bit DONE __at(0x7E11);


extern volatile __bit DT __at(0x7C17);


extern volatile __bit DTRXP __at(0x7DC5);


extern volatile __bit D_A __at(0x7E3D);


extern volatile __bit D_NOT_A __at(0x7E3D);


extern volatile __bit D_nA __at(0x7E3D);


extern volatile __bit EBDIS __at(0x7E5F);


extern volatile __bit ECCPAS0 __at(0x7DB4);


extern volatile __bit ECCPAS1 __at(0x7DB5);


extern volatile __bit ECCPAS2 __at(0x7DB6);


extern volatile __bit ECCPASE __at(0x7DB7);


extern volatile __bit EEADR0 __at(0x7D48);


extern volatile __bit EEADR1 __at(0x7D49);


extern volatile __bit EEADR2 __at(0x7D4A);


extern volatile __bit EEADR3 __at(0x7D4B);


extern volatile __bit EEADR4 __at(0x7D4C);


extern volatile __bit EEADR5 __at(0x7D4D);


extern volatile __bit EEADR6 __at(0x7D4E);


extern volatile __bit EEADR7 __at(0x7D4F);


extern volatile __bit EEFS __at(0x7D36);


extern volatile __bit EEIE __at(0x7D04);


extern volatile __bit EEIF __at(0x7D0C);


extern volatile __bit EEIP __at(0x7D14);


extern volatile __bit EEPGD __at(0x7D37);


extern volatile __bit FERR __at(0x7D5A);


extern volatile __bit FLT0 __at(0x7C08);


extern volatile __bit FREE __at(0x7D34);


extern volatile __bit FVREN __at(0x7DA7);


extern volatile __bit FVRST __at(0x7DA6);


extern volatile __bit GCEN __at(0x7E2F);


extern volatile __bit GIE __at(0x7F97);


extern volatile __bit GIEH __at(0x7F97);


extern volatile __bit GIEL __at(0x7F96);


extern volatile __bit GIE_GIEH __at(0x7F97);


extern volatile __bit GO __at(0x7E11);


extern volatile __bit GODONE __at(0x7E11);


extern volatile __bit GO_DONE __at(0x7E11);


extern volatile __bit GO_NOT_DONE __at(0x7E11);


extern volatile __bit GO_nDONE __at(0x7E11);


extern volatile __bit HLVDEN __at(0x7E94);


extern volatile __bit HLVDIE __at(0x7D02);


extern volatile __bit HLVDIF __at(0x7D0A);


extern volatile __bit HLVDIN __at(0x7C05);


extern volatile __bit HLVDIP __at(0x7D12);


extern volatile __bit HLVDL0 __at(0x7E90);


extern volatile __bit HLVDL1 __at(0x7E91);


extern volatile __bit HLVDL2 __at(0x7E92);


extern volatile __bit HLVDL3 __at(0x7E93);


extern volatile __bit IDLEN __at(0x7E9F);


extern volatile __bit INT0 __at(0x7C08);


extern volatile __bit INT0E __at(0x7F94);


extern volatile __bit INT0F __at(0x7F91);


extern volatile __bit INT0IE __at(0x7F94);


extern volatile __bit INT0IF __at(0x7F91);


extern volatile __bit INT1 __at(0x7C09);


extern volatile __bit INT1E __at(0x7F83);


extern volatile __bit INT1F __at(0x7F80);


extern volatile __bit INT1IE __at(0x7F83);


extern volatile __bit INT1IF __at(0x7F80);


extern volatile __bit INT1IP __at(0x7F86);


extern volatile __bit INT1P __at(0x7F86);


extern volatile __bit INT2 __at(0x7C0A);


extern volatile __bit INT2E __at(0x7F84);


extern volatile __bit INT2F __at(0x7F81);


extern volatile __bit INT2IE __at(0x7F84);


extern volatile __bit INT2IF __at(0x7F81);


extern volatile __bit INT2IP __at(0x7F87);


extern volatile __bit INT2P __at(0x7F87);


extern volatile __bit INTEDG0 __at(0x7F8E);


extern volatile __bit INTEDG1 __at(0x7F8D);


extern volatile __bit INTEDG2 __at(0x7F8C);


extern volatile __bit INTSRC __at(0x7CDF);


extern volatile __bit IOCB4 __at(0x7BEC);


extern volatile __bit IOCB5 __at(0x7BED);


extern volatile __bit IOCB6 __at(0x7BEE);


extern volatile __bit IOCB7 __at(0x7BEF);


extern volatile __bit IOFS __at(0x7E9A);


extern volatile __bit IPEN __at(0x7E87);


extern volatile __bit IRCF0 __at(0x7E9C);


extern volatile __bit IRCF1 __at(0x7E9D);


extern volatile __bit IRCF2 __at(0x7E9E);


extern volatile __bit IRVST __at(0x7E95);


extern volatile __bit IVRST __at(0x7E95);


extern volatile __bit KBI0 __at(0x7C0C);


extern volatile __bit KBI1 __at(0x7C0D);


extern volatile __bit KBI2 __at(0x7C0E);


extern volatile __bit KBI3 __at(0x7C0F);


extern volatile __bit LA0 __at(0x7C48);


extern volatile __bit LA1 __at(0x7C49);


extern volatile __bit LA2 __at(0x7C4A);


extern volatile __bit LA3 __at(0x7C4B);


extern volatile __bit LA4 __at(0x7C4C);


extern volatile __bit LA5 __at(0x7C4D);


extern volatile __bit LA6 __at(0x7C4E);


extern volatile __bit LA7 __at(0x7C4F);


extern volatile __bit LATA0 __at(0x7C48);


extern volatile __bit LATA1 __at(0x7C49);


extern volatile __bit LATA2 __at(0x7C4A);


extern volatile __bit LATA3 __at(0x7C4B);


extern volatile __bit LATA4 __at(0x7C4C);


extern volatile __bit LATA5 __at(0x7C4D);


extern volatile __bit LATA6 __at(0x7C4E);


extern volatile __bit LATA7 __at(0x7C4F);


extern volatile __bit LATB0 __at(0x7C50);


extern volatile __bit LATB1 __at(0x7C51);


extern volatile __bit LATB2 __at(0x7C52);


extern volatile __bit LATB3 __at(0x7C53);


extern volatile __bit LATB4 __at(0x7C54);


extern volatile __bit LATB5 __at(0x7C55);


extern volatile __bit LATB6 __at(0x7C56);


extern volatile __bit LATB7 __at(0x7C57);


extern volatile __bit LATC0 __at(0x7C58);


extern volatile __bit LATC1 __at(0x7C59);


extern volatile __bit LATC2 __at(0x7C5A);


extern volatile __bit LATC3 __at(0x7C5B);


extern volatile __bit LATC4 __at(0x7C5C);


extern volatile __bit LATC5 __at(0x7C5D);


extern volatile __bit LATC6 __at(0x7C5E);


extern volatile __bit LATC7 __at(0x7C5F);


extern volatile __bit LB0 __at(0x7C50);


extern volatile __bit LB1 __at(0x7C51);


extern volatile __bit LB2 __at(0x7C52);


extern volatile __bit LB3 __at(0x7C53);


extern volatile __bit LB4 __at(0x7C54);


extern volatile __bit LB5 __at(0x7C55);


extern volatile __bit LB6 __at(0x7C56);


extern volatile __bit LB7 __at(0x7C57);


extern volatile __bit LC0 __at(0x7C58);


extern volatile __bit LC1 __at(0x7C59);


extern volatile __bit LC2 __at(0x7C5A);


extern volatile __bit LC3 __at(0x7C5B);


extern volatile __bit LC4 __at(0x7C5C);


extern volatile __bit LC5 __at(0x7C5D);


extern volatile __bit LC6 __at(0x7C5E);


extern volatile __bit LC7 __at(0x7C5F);


extern volatile __bit LVDEN __at(0x7E94);


extern volatile __bit LVDIE __at(0x7D02);


extern volatile __bit LVDIF __at(0x7D0A);


extern volatile __bit LVDIN __at(0x7C05);


extern volatile __bit LVDIP __at(0x7D12);


extern volatile __bit LVDL0 __at(0x7E90);


extern volatile __bit LVDL1 __at(0x7E91);


extern volatile __bit LVDL2 __at(0x7E92);


extern volatile __bit LVDL3 __at(0x7E93);


extern volatile __bit LVV0 __at(0x7E90);


extern volatile __bit LVV1 __at(0x7E91);


extern volatile __bit LVV2 __at(0x7E92);


extern volatile __bit LVV3 __at(0x7E93);


extern volatile __bit MC1OUT __at(0x7BCF);


extern volatile __bit MC2OUT __at(0x7BCE);


extern volatile __bit MCLR __at(0x7C23);


extern volatile __bit MSK0 __at(0x7BB8);


extern volatile __bit MSK1 __at(0x7BB9);


extern volatile __bit MSK2 __at(0x7BBA);


extern volatile __bit MSK3 __at(0x7BBB);


extern volatile __bit MSK4 __at(0x7BBC);


extern volatile __bit MSK5 __at(0x7BBD);


extern volatile __bit MSK6 __at(0x7BBE);


extern volatile __bit MSK7 __at(0x7BBF);


extern volatile __bit NEGATIVE __at(0x7EC4);


extern volatile __bit NOT_A __at(0x7E3D);


extern volatile __bit NOT_ADDRESS __at(0x7E3D);


extern volatile __bit NOT_BOR __at(0x7E80);


extern volatile __bit NOT_DONE __at(0x7E11);


extern volatile __bit NOT_MCLR __at(0x7C23);


extern volatile __bit NOT_PD __at(0x7E82);


extern volatile __bit NOT_POR __at(0x7E81);


extern volatile __bit NOT_RBPU __at(0x7F8F);


extern volatile __bit NOT_RI __at(0x7E84);


extern volatile __bit NOT_SS __at(0x7C05);


extern volatile __bit NOT_T1SYNC __at(0x7E6A);


extern volatile __bit NOT_T3SYNC __at(0x7D8A);


extern volatile __bit NOT_TO __at(0x7E83);


extern volatile __bit NOT_W __at(0x7E3A);


extern volatile __bit NOT_WRITE __at(0x7E3A);


extern volatile __bit OERR __at(0x7D59);


extern volatile __bit OSCFIE __at(0x7D07);


extern volatile __bit OSCFIF __at(0x7D0F);


extern volatile __bit OSCFIP __at(0x7D17);


extern volatile __bit OSTS __at(0x7E9B);


extern volatile __bit OV __at(0x7EC3);


extern volatile __bit OVERFLOW __at(0x7EC3);


extern volatile __bit P1A __at(0x7C12);


extern volatile __bit P1B __at(0x7C0A);


extern volatile __bit P1C __at(0x7C09);


extern volatile __bit P1D __at(0x7C0C);


extern volatile __bit P1M0 __at(0x7DEE);


extern volatile __bit P1M1 __at(0x7DEF);


extern volatile __bit PA1 __at(0x7C12);


extern volatile __bit PA2 __at(0x7C11);


extern volatile __bit PC3E __at(0x7C23);


extern volatile __bit PD __at(0x7E82);


extern volatile __bit PDC0 __at(0x7DB8);


extern volatile __bit PDC1 __at(0x7DB9);


extern volatile __bit PDC2 __at(0x7DBA);


extern volatile __bit PDC3 __at(0x7DBB);


extern volatile __bit PDC4 __at(0x7DBC);


extern volatile __bit PDC5 __at(0x7DBD);


extern volatile __bit PDC6 __at(0x7DBE);


extern volatile __bit PEIE __at(0x7F96);


extern volatile __bit PEIE_GIEL __at(0x7F96);


extern volatile __bit PEN __at(0x7E2A);


extern volatile __bit PGC __at(0x7C0E);


extern volatile __bit PGD __at(0x7C0F);


extern volatile __bit PGM __at(0x7C0D);


extern volatile __bit PLLEN __at(0x7CDE);


extern volatile __bit POR __at(0x7E81);


extern volatile __bit PRSEN __at(0x7DBF);


extern volatile __bit PSA __at(0x7EAB);


extern volatile __bit PSSAC0 __at(0x7DB2);


extern volatile __bit PSSAC1 __at(0x7DB3);


extern volatile __bit PSSBD0 __at(0x7DB0);


extern volatile __bit PSSBD1 __at(0x7DB1);


extern volatile __bit __attribute__((__deprecated__)) RA0 __at(0x7C00);


extern volatile __bit __attribute__((__deprecated__)) RA1 __at(0x7C01);


extern volatile __bit __attribute__((__deprecated__)) RA2 __at(0x7C02);


extern volatile __bit __attribute__((__deprecated__)) RA3 __at(0x7C03);


extern volatile __bit __attribute__((__deprecated__)) RA4 __at(0x7C04);


extern volatile __bit __attribute__((__deprecated__)) RA5 __at(0x7C05);


extern volatile __bit __attribute__((__deprecated__)) RA6 __at(0x7C06);


extern volatile __bit __attribute__((__deprecated__)) RA7 __at(0x7C07);


extern volatile __bit __attribute__((__deprecated__)) RB0 __at(0x7C08);


extern volatile __bit __attribute__((__deprecated__)) RB1 __at(0x7C09);


extern volatile __bit __attribute__((__deprecated__)) RB2 __at(0x7C0A);


extern volatile __bit __attribute__((__deprecated__)) RB3 __at(0x7C0B);


extern volatile __bit __attribute__((__deprecated__)) RB4 __at(0x7C0C);


extern volatile __bit __attribute__((__deprecated__)) RB5 __at(0x7C0D);


extern volatile __bit __attribute__((__deprecated__)) RB6 __at(0x7C0E);


extern volatile __bit __attribute__((__deprecated__)) RB7 __at(0x7C0F);


extern volatile __bit RBIE __at(0x7F93);


extern volatile __bit RBIF __at(0x7F90);


extern volatile __bit RBIP __at(0x7F88);


extern volatile __bit RBPU __at(0x7F8F);


extern volatile __bit __attribute__((__deprecated__)) RC0 __at(0x7C10);


extern volatile __bit __attribute__((__deprecated__)) RC1 __at(0x7C11);


extern volatile __bit RC1IE __at(0x7CED);


extern volatile __bit RC1IF __at(0x7CF5);


extern volatile __bit RC1IP __at(0x7CFD);


extern volatile __bit __attribute__((__deprecated__)) RC2 __at(0x7C12);


extern volatile __bit __attribute__((__deprecated__)) RC3 __at(0x7C13);


extern volatile __bit __attribute__((__deprecated__)) RC4 __at(0x7C14);


extern volatile __bit __attribute__((__deprecated__)) RC5 __at(0x7C15);


extern volatile __bit __attribute__((__deprecated__)) RC6 __at(0x7C16);


extern volatile __bit __attribute__((__deprecated__)) RC7 __at(0x7C17);


extern volatile __bit RC8_9 __at(0x7D5E);


extern volatile __bit RC9 __at(0x7D5E);


extern volatile __bit RCD8 __at(0x7D58);


extern volatile __bit RCEN __at(0x7E2B);


extern volatile __bit RCIDL __at(0x7DC6);


extern volatile __bit RCIE __at(0x7CED);


extern volatile __bit RCIF __at(0x7CF5);


extern volatile __bit RCIP __at(0x7CFD);


extern volatile __bit RD __at(0x7D30);


extern volatile __bit RD163 __at(0x7D8F);


extern volatile __bit RE3 __at(0x7C23);


extern volatile __bit RI __at(0x7E84);


extern volatile __bit RJPU __at(0x7C07);


extern volatile __bit RSEN __at(0x7E29);


extern volatile __bit RW __at(0x7E3A);


extern volatile __bit RX __at(0x7C17);


extern volatile __bit RX9 __at(0x7D5E);


extern volatile __bit RX9D __at(0x7D58);


extern volatile __bit RXCKP __at(0x7DC5);


extern volatile __bit R_NOT_W __at(0x7E3A);


extern volatile __bit R_W __at(0x7E3A);


extern volatile __bit R_nW __at(0x7E3A);


extern volatile __bit SBOREN __at(0x7E86);


extern volatile __bit SCK __at(0x7C13);


extern volatile __bit SCKP __at(0x7DC4);


extern volatile __bit SCL __at(0x7C13);


extern volatile __bit SCS0 __at(0x7E98);


extern volatile __bit SCS1 __at(0x7E99);


extern volatile __bit SDA __at(0x7C14);


extern volatile __bit SDI __at(0x7C14);


extern volatile __bit SDO __at(0x7C15);


extern volatile __bit SEN __at(0x7E28);


extern volatile __bit SENDB __at(0x7D63);


extern volatile __bit SENDB1 __at(0x7D63);


extern volatile __bit SLRA __at(0x7BC0);


extern volatile __bit SLRB __at(0x7BC1);


extern volatile __bit SLRC __at(0x7BC2);


extern volatile __bit SMP __at(0x7E3F);


extern volatile __bit SOSCEN __at(0x7E6B);


extern volatile __bit SOSCEN3 __at(0x7D8B);


extern volatile __bit SP0 __at(0x7FE0);


extern volatile __bit SP1 __at(0x7FE1);


extern volatile __bit SP2 __at(0x7FE2);


extern volatile __bit SP3 __at(0x7FE3);


extern volatile __bit SP4 __at(0x7FE4);


extern volatile __bit SPEN __at(0x7D5F);


extern volatile __bit SREN __at(0x7D5D);


extern volatile __bit SRENA __at(0x7D5D);


extern volatile __bit SS __at(0x7C05);


extern volatile __bit SSPEN __at(0x7E35);


extern volatile __bit SSPIE __at(0x7CEB);


extern volatile __bit SSPIF __at(0x7CF3);


extern volatile __bit SSPIP __at(0x7CFB);


extern volatile __bit SSPM0 __at(0x7E30);


extern volatile __bit SSPM1 __at(0x7E31);


extern volatile __bit SSPM2 __at(0x7E32);


extern volatile __bit SSPM3 __at(0x7E33);


extern volatile __bit SSPOV __at(0x7E36);


extern volatile __bit START __at(0x7E3B);


extern volatile __bit STKFUL __at(0x7FE7);


extern volatile __bit STKOVF __at(0x7FE7);


extern volatile __bit STKUNF __at(0x7FE6);


extern volatile __bit STOP __at(0x7E3C);


extern volatile __bit STRA __at(0x7DC8);


extern volatile __bit STRB __at(0x7DC9);


extern volatile __bit STRC __at(0x7DCA);


extern volatile __bit STRD __at(0x7DCB);


extern volatile __bit STRSYNC __at(0x7DCC);


extern volatile __bit SWDTE __at(0x7E88);


extern volatile __bit SWDTEN __at(0x7E88);


extern volatile __bit SYNC __at(0x7D64);


extern volatile __bit SYNC1 __at(0x7D64);


extern volatile __bit T08BIT __at(0x7EAE);


extern volatile __bit T0CKI __at(0x7C04);


extern volatile __bit T0CS __at(0x7EAD);


extern volatile __bit T0IE __at(0x7F95);


extern volatile __bit T0IF __at(0x7F92);


extern volatile __bit T0PS0 __at(0x7EA8);


extern volatile __bit T0PS1 __at(0x7EA9);


extern volatile __bit T0PS2 __at(0x7EAA);


extern volatile __bit T0SE __at(0x7EAC);


extern volatile __bit T13CKI __at(0x7C10);


extern volatile __bit T1CKI __at(0x7C10);


extern volatile __bit T1CKPS0 __at(0x7E6C);


extern volatile __bit T1CKPS1 __at(0x7E6D);


extern volatile __bit T1OSCEN __at(0x7E6B);


extern volatile __bit T1OSI __at(0x7C11);


extern volatile __bit T1OSO __at(0x7C10);


extern volatile __bit T1RD16 __at(0x7E6F);


extern volatile __bit T1RUN __at(0x7E6E);


extern volatile __bit T1SYNC __at(0x7E6A);


extern volatile __bit T2CKPS0 __at(0x7E50);


extern volatile __bit T2CKPS1 __at(0x7E51);


extern volatile __bit T2OUTPS0 __at(0x7E53);


extern volatile __bit T2OUTPS1 __at(0x7E54);


extern volatile __bit T2OUTPS2 __at(0x7E55);


extern volatile __bit T2OUTPS3 __at(0x7E56);


extern volatile __bit T3CCP1 __at(0x7D8B);


extern volatile __bit T3CCP2 __at(0x7D8E);


extern volatile __bit T3CKI __at(0x7C10);


extern volatile __bit T3CKPS0 __at(0x7D8C);


extern volatile __bit T3CKPS1 __at(0x7D8D);


extern volatile __bit T3RD16 __at(0x7D8F);


extern volatile __bit T3SYNC __at(0x7D8A);


extern volatile __bit TMR0IE __at(0x7F95);


extern volatile __bit TMR0IF __at(0x7F92);


extern volatile __bit TMR0IP __at(0x7F8A);


extern volatile __bit TMR0ON __at(0x7EAF);


extern volatile __bit TMR1CS __at(0x7E69);


extern volatile __bit TMR1IE __at(0x7CE8);


extern volatile __bit TMR1IF __at(0x7CF0);


extern volatile __bit TMR1IP __at(0x7CF8);


extern volatile __bit TMR1ON __at(0x7E68);


extern volatile __bit TMR2IE __at(0x7CE9);


extern volatile __bit TMR2IF __at(0x7CF1);


extern volatile __bit TMR2IP __at(0x7CF9);


extern volatile __bit TMR2ON __at(0x7E52);


extern volatile __bit TMR3CS __at(0x7D89);


extern volatile __bit TMR3IE __at(0x7D01);


extern volatile __bit TMR3IF __at(0x7D09);


extern volatile __bit TMR3IP __at(0x7D11);


extern volatile __bit TMR3ON __at(0x7D88);


extern volatile __bit TO __at(0x7E83);


extern volatile __bit TRISA0 __at(0x7C90);


extern volatile __bit TRISA1 __at(0x7C91);


extern volatile __bit TRISA2 __at(0x7C92);


extern volatile __bit TRISA3 __at(0x7C93);


extern volatile __bit TRISA4 __at(0x7C94);


extern volatile __bit TRISA5 __at(0x7C95);


extern volatile __bit TRISA6 __at(0x7C96);


extern volatile __bit TRISA7 __at(0x7C97);


extern volatile __bit TRISB0 __at(0x7C98);


extern volatile __bit TRISB1 __at(0x7C99);


extern volatile __bit TRISB2 __at(0x7C9A);


extern volatile __bit TRISB3 __at(0x7C9B);


extern volatile __bit TRISB4 __at(0x7C9C);


extern volatile __bit TRISB5 __at(0x7C9D);


extern volatile __bit TRISB6 __at(0x7C9E);


extern volatile __bit TRISB7 __at(0x7C9F);


extern volatile __bit TRISC0 __at(0x7CA0);


extern volatile __bit TRISC1 __at(0x7CA1);


extern volatile __bit TRISC2 __at(0x7CA2);


extern volatile __bit TRISC3 __at(0x7CA3);


extern volatile __bit TRISC4 __at(0x7CA4);


extern volatile __bit TRISC5 __at(0x7CA5);


extern volatile __bit TRISC6 __at(0x7CA6);


extern volatile __bit TRISC7 __at(0x7CA7);


extern volatile __bit TRMT __at(0x7D61);


extern volatile __bit TRMT1 __at(0x7D61);


extern volatile __bit TUN0 __at(0x7CD8);


extern volatile __bit TUN1 __at(0x7CD9);


extern volatile __bit TUN2 __at(0x7CDA);


extern volatile __bit TUN3 __at(0x7CDB);


extern volatile __bit TUN4 __at(0x7CDC);


extern volatile __bit TUN5 __at(0x7CDD);


extern volatile __bit TX __at(0x7C16);


extern volatile __bit TX1IE __at(0x7CEC);


extern volatile __bit TX1IF __at(0x7CF4);


extern volatile __bit TX1IP __at(0x7CFC);


extern volatile __bit TX8_9 __at(0x7D66);


extern volatile __bit TX9 __at(0x7D66);


extern volatile __bit TX91 __at(0x7D66);


extern volatile __bit TX9D __at(0x7D60);


extern volatile __bit TX9D1 __at(0x7D60);


extern volatile __bit TXD8 __at(0x7D60);


extern volatile __bit TXEN __at(0x7D65);


extern volatile __bit TXEN1 __at(0x7D65);


extern volatile __bit TXIE __at(0x7CEC);


extern volatile __bit TXIF __at(0x7CF4);


extern volatile __bit TXIP __at(0x7CFC);


extern volatile __bit UA __at(0x7E39);


extern volatile __bit ULPWUIN __at(0x7C00);


extern volatile __bit VCFG0 __at(0x7E0C);


extern volatile __bit VCFG01 __at(0x7E0C);


extern volatile __bit VCFG1 __at(0x7E0D);


extern volatile __bit VCFG11 __at(0x7E0D);


extern volatile __bit VDIRMAG __at(0x7E97);


extern volatile __bit VPP __at(0x7C23);


extern volatile __bit VREFM __at(0x7C02);


extern volatile __bit VREFN __at(0x7C02);


extern volatile __bit VREFP __at(0x7C03);


extern volatile __bit W4E __at(0x7DC1);


extern volatile __bit WAIT0 __at(0x7E5C);


extern volatile __bit WAIT1 __at(0x7E5D);


extern volatile __bit WCOL __at(0x7E37);


extern volatile __bit WM0 __at(0x7E58);


extern volatile __bit WM1 __at(0x7E59);


extern volatile __bit WPUB0 __at(0x7BE0);


extern volatile __bit WPUB1 __at(0x7BE1);


extern volatile __bit WPUB2 __at(0x7BE2);


extern volatile __bit WPUB3 __at(0x7BE3);


extern volatile __bit WPUB4 __at(0x7BE4);


extern volatile __bit WPUB5 __at(0x7BE5);


extern volatile __bit WPUB6 __at(0x7BE6);


extern volatile __bit WPUB7 __at(0x7BE7);


extern volatile __bit WR __at(0x7D31);


extern volatile __bit WREN __at(0x7D32);


extern volatile __bit WRERR __at(0x7D33);


extern volatile __bit WUE __at(0x7DC1);


extern volatile __bit ZERO __at(0x7EC2);


extern volatile __bit nA __at(0x7E3D);


extern volatile __bit nADDRESS __at(0x7E3D);


extern volatile __bit nBOR __at(0x7E80);


extern volatile __bit nDONE __at(0x7E11);


extern volatile __bit nMCLR __at(0x7C23);


extern volatile __bit nPD __at(0x7E82);


extern volatile __bit nPOR __at(0x7E81);


extern volatile __bit nRBPU __at(0x7F8F);


extern volatile __bit nRI __at(0x7E84);


extern volatile __bit nSS __at(0x7C05);


extern volatile __bit nT1SYNC __at(0x7E6A);


extern volatile __bit nT3SYNC __at(0x7D8A);


extern volatile __bit nTO __at(0x7E83);


extern volatile __bit nW __at(0x7E3A);


extern volatile __bit nWRITE __at(0x7E3A);

# 19 "C:/Users/User/.mchp_packs/Microchip/PIC18F-K_DFP/1.6.125/xc8\pic\include\pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);

# 156
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);

# 192
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);

# 4 "C:/Users/User/.mchp_packs/Microchip/PIC18F-K_DFP/1.6.125/xc8\pic\include\__size_t.h"
typedef unsigned size_t;

# 7 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdarg.h"
typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);

# 43 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdio.h"
struct __prbuf
{
char * ptr;
void (* func)(char);
};

# 29 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\errno.h"
extern int errno;

# 12 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\conio.h"
extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);

# 23
extern char * cgets(char *);
extern void cputs(const char *);

# 88 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdio.h"
extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);


# 180
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);

# 15 "interrupt.h"
void __interrupt(low_priority) Inter_lo(void);
void __interrupt(high_priority) Inter_hi(void);

# 17 "eusart.h"
extern volatile uint8_t eusartRxCount;

void init_uart(void);
void putch(char data);

uint8_t EUSART_Read(void);
void EUSART_Write(uint8_t txData);
void reinit_rx();
void EUSART_Write_Str(const unsigned char *t);

# 30 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\math.h"
extern double fabs(double);
extern double floor(double);
extern double ceil(double);
extern double modf(double, double *);
extern double sqrt(double);
extern double atof(const char *);
extern double sin(double) ;
extern double cos(double) ;
extern double tan(double) ;
extern double asin(double) ;
extern double acos(double) ;
extern double atan(double);
extern double atan2(double, double) ;
extern double log(double);
extern double log10(double);
extern double pow(double, double) ;
extern double exp(double) ;
extern double sinh(double) ;
extern double cosh(double) ;
extern double tanh(double);
extern double eval_poly(double, const double *, int);
extern double frexp(double, int *);
extern double ldexp(double, int);
extern double fmod(double, double);
extern double trunc(double);
extern double round(double);

# 9 "hd44780.h"
typedef enum{
COMMAND,
DATA,
}LCD_REGISTER_TYPE;

# 38
const char HD44780_CYR[] =
{
0x41,
0xA0,
0x42,
0xA1,
0xE0,
0x45,
0xA3,
0xA4,
0xA5,
0xA6,
0x4B,
0xA7,
0x4D,
0x48,
0x4F,
0xA8,
0x50,
0x43,
0x54,
0xA9,
0xAA,
0x58,
0xE1,
0xAB,
0xAC,
0xE2,
0xAD,
0xAE,
0x62,
0xAF,
0xB0,
0xB1,
0x61,
0xB2,
0xB3,
0xB4,
0xE3,
0x65,
0xB6,
0xB7,
0xB8,
0xB9,
0xBA,
0xBB,
0xBC,
0xBD,
0x6F,
0xBE,
0x70,
0x63,
0xBF,
0x79,
0xE4,
0x78,
0xE5,
0xC0,
0xC1,
0xE6,
0xC2,
0xC3,
0xC4,
0xC5,
0xC6,
0xC7
};


void lcdNibble(uint8_t nibble);
void initLCD(void);
void lcdWrite(uint8_t byte, LCD_REGISTER_TYPE type);
void clearLCD(void);
void lcd_gotoxy(uint8_t x, uint8_t y);
void lcd_putc(char c);
void lcdPrint(const unsigned char *t);
void cgrom_char(uint8_t *symbol, uint8_t address);

# 28 "key.h"
void key_press(void);
uint8_t key_GetKey(void);

# 7 "C:\Program Files\Microchip\xc8\v2.36\pic\include\c90\stdlib.h"
typedef unsigned short wchar_t;

# 15
typedef struct {
int rem;
int quot;
} div_t;
typedef struct {
unsigned rem;
unsigned quot;
} udiv_t;
typedef struct {
long quot;
long rem;
} ldiv_t;
typedef struct {
unsigned long quot;
unsigned long rem;
} uldiv_t;

# 65
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);

# 73
extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);

# 85
extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

# 104
extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);

# 7 "eeprom.h"
void write_eep( unsigned char address, unsigned char data );
unsigned char read_eep( unsigned short address );

# 12 "onewire.h"
uint8_t ow_reset(void);
uint8_t read_bit(void);
void write_bit(uint8_t bitval);
uint8_t read_byte(void);
void write_byte(uint8_t val);
void Waiting_WR (void);

# 23 "ds18b20.h"
const char fract[] = {0,1,1,2,2,3,4,4,5,6,6,7,7,8,9,9};


uint8_t readTemp_Single(uint16_t *buf, uint8_t *minus, uint8_t *time_flag, uint8_t *timer_val);

# 33
void init_ds18b20(void);
uint8_t ds18b20_crc8(uint8_t *data_in, uint8_t num_bytes);


# 29 "main.h"
#pragma config FOSC = INTIO67
#pragma config FCMEN = OFF
#pragma config IESO = OFF


#pragma config PWRT = ON
#pragma config BOREN = SBORDIS
#pragma config BORV = 18


#pragma config WDTEN = ON
#pragma config WDTPS = 2048


#pragma config CCP2MX = PORTBE
#pragma config PBADEN = OFF
#pragma config LPT1OSC = OFF
#pragma config HFOFST = OFF
#pragma config MCLRE = ON


#pragma config STVREN = ON
#pragma config LVP = OFF
#pragma config XINST = OFF


#pragma config CP0 = OFF
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF


#pragma config CPB = OFF
#pragma config CPD = OFF


#pragma config WRT0 = OFF
#pragma config WRT1 = OFF
#pragma config WRT2 = OFF
#pragma config WRT3 = OFF


#pragma config WRTC = OFF
#pragma config WRTB = OFF
#pragma config WRTD = OFF


#pragma config EBTR0 = OFF
#pragma config EBTR1 = OFF
#pragma config EBTR2 = OFF
#pragma config EBTR3 = OFF


#pragma config EBTRB = OFF

# 156
extern uint8_t tick_t0, tick_t1, tick_t1_1;
extern uint16_t adc_res;
extern uint32_t U_meas;
extern uint32_t U_summ;
extern uint32_t U_summTriac;
extern uint8_t triacON;
extern uint16_t cnt_adc;
extern uint16_t U_real;
extern uint32_t sqrtU_sum;
extern uint16_t angleU;
extern uint16_t angle_U_ocr;
extern uint8_t zero;
extern uint8_t getU;
extern uint8_t read_key;
extern uint8_t stab;




extern int16_t err;
extern int8_t pp;
extern int16_t ps;
extern uint16_t sound_delay;
extern uint8_t sound_enable;

extern uint8_t time_flag;
extern uint16_t timer_val;

extern __bit power_100;

void init_cpu(void);
int8_t EncPoll( void );
void lcd_preload(void);
void show_lcd_main(void);
uint16_t calc_power( uint32_t res, uint16_t u_rl);

# 12 "main.c"
uint8_t time_flag = 0;
uint16_t timer_val = 0;
uint16_t temperature;
uint16_t oldTemperature;
uint16_t oldOldTemperature;
uint8_t countTmp = 0;
__bit enTmp = 0;
uint8_t minus;
uint8_t isTemp;
uint8_t AlarmTemp, AlarmTempT;
uint8_t TempEn, TempEnT;
uint8_t meas_temp = 1;
uint8_t isTempReady;

uint16_t sound_delay;
uint8_t sound_enable = 0;


uint8_t TxtBuf[21];

uint8_t read_key = 0;
uint8_t pressed_key = 0;
uint8_t tick_t0 = 0, tick_t1 = 0, tick_t1_1 = 0;

uint32_t U_meas = 0;
uint32_t U_summ = 0;
uint32_t U_summTriac = 0;
uint8_t triacON = 0;
uint16_t cnt_adc = 0;
uint16_t U_real = 0;
uint16_t U_Out = 0, U_Out_Sum = 0, Temp_U_Out = 0;
uint8_t u_set = 0;
uint32_t sqrtU_sum = 0;
uint8_t zero = 0;
uint8_t getU;
uint8_t is_chg_pwr = 0;
uint16_t angleU = 18000;
uint16_t angle_U_ocr = 18000;
uint8_t stab = 1;

__bit is_stab;
__bit is_power;
__bit show_tp = 0;
__bit power_100;
;

uint16_t p_watt;

uint16_t watt_disp;

const int8_t EncState_[] = {0, -1, 1, 0x7F, 1, 0, 0x7F, -1, -1, 0x7F, 0, 1, 0x7F, 1, -1, 0};
int16_t EncData = 0;
int8_t count_enc = 0;
__bit enc_minus = 0;
__bit inc_data = 0;

uint8_t r_whole, r_dec;

uint8_t sel_main = 0;
uint32_t t_res;

uint8_t const compile_date[12] = "Sep 29 2023";
uint8_t const compile_time[9] = "15:25:16";

asm("\tpsect eeprom_data,class=EEDATA,noexec"); asm("\tdb\t" "24" "," "20" "," "90" "," "0" "," "0" "," "0" "," "0" "," "0");

# 83
const uint8_t symbol_1[8] = {0x00, 0x00, 0x08, 0x15, 0x02, 0x00, 0x00, 0x00};
const uint8_t symbol_2[8] = {0x0E, 0x11, 0x11, 0x11, 0x0A, 0x1B, 0x00, 0x00};
const uint8_t symbol_3[8] = {0x00, 0x04, 0x1E, 0x1F, 0x1E, 0x04, 0x00, 0x00};
const uint8_t symbol_4[8] = {0x00, 0x04, 0x0F, 0x1F, 0x0F, 0x04, 0x00, 0x00};
const uint8_t symbol_5[8] = {0x00, 0x00, 0x1F, 0x1F, 0x1F, 0x00, 0x00, 0x00};
const uint8_t symbol_6[8] = {0x00, 0x0E, 0x1F, 0x1B, 0x1F, 0x0E, 0x00, 0x00};
const uint8_t symbol_7[8] = {0x06, 0x09, 0x09, 0x06, 0x00, 0x00, 0x00, 0x00};



void main(void) {

static __bit whole_dec = 0;
static __bit alarm_enable = 0;
static uint8_t powerOFF = 0;


init_cpu();

_delay((unsigned long)((10)*(64000000/4000.0)));


lcd_gotoxy(1, 1);
lcdPrint("-PHASE DIMMER STAB-");
lcd_gotoxy(1, 2);
sprintf(TxtBuf, "(c)Ivan_fd v%s", "18.10.22");
lcdPrint(TxtBuf);
lcd_gotoxy(1, 3);
sprintf(TxtBuf, "%s %s", compile_date, compile_time);
lcdPrint(TxtBuf);


_delay((unsigned long)((2000)*(64000000/4000.0)));
asm(" clrwdt");
clearLCD();
AlarmTemp = read_eep(3);
TempEn = read_eep(4);
U_Out = read_eep(2);
EncData = U_Out;
r_whole = read_eep(0);
r_dec = read_eep(1);
t_res = (uint32_t) (r_whole * 1000 + r_dec * 10);

while (1) {
asm(" clrwdt");
if (read_key) {
key_press();
read_key = 0;
}
pressed_key = key_GetKey();

oldOldTemperature = temperature;
isTempReady = readTemp_Single(&temperature, &minus, &time_flag, (uint8_t *) & timer_val);

if ((oldTemperature != temperature) && (enTmp == 0)) {
oldTemperature = temperature;
enTmp = 1;
}

if ((isTempReady == 1) && (enTmp))
countTmp++;

if (countTmp >= 3) {
countTmp = 0;
enTmp = 0;
} else
temperature = oldOldTemperature;

# 160
if (TempEn) {
if ((temperature / 10) >= AlarmTemp) {
TMR1ON = 0;
LATAbits.LA5 = 0;
;
power_100 = 0;
sound_enable = 1;
powerOFF = 1;
}
}

if (isTempReady == 1)
isTemp = 1;
if (isTempReady == 3)
isTemp = 3;


count_enc += EncPoll();
if (((count_enc % 4) == 0) && !(count_enc == 0)) {
if ((count_enc & (1 << (7)))) {
if (inc_data)
EncData -= 10;
else{
EncData--;

}
} else {
if (inc_data)
EncData += 10;
else{
EncData++;

}
}
count_enc = 0;
is_power = 0;
show_tp = 1;
tick_t1_1 = 0;
}


if (!getU && (zero == 10)) {
sqrtU_sum = U_summ / cnt_adc;
U_real = (uint16_t)sqrt(sqrtU_sum);

sqrtU_sum = U_summTriac / cnt_adc;
U_Out = (uint16_t)sqrt(sqrtU_sum);

U_summTriac = 0;
U_summ = 0;
getU = 1;


if (u_set > U_real) {
is_stab = 0;
} else
is_stab = 1;

if(powerOFF)
TMR1ON = 0;

if(power_100){
TMR1ON = 0;
LATAbits.LA5 = 1;
}


LATAbits.LA3 = !LATAbits.LA3;
if (power_100)
watt_disp = calc_power(t_res, U_real);
else
watt_disp = calc_power(t_res, U_Out);
}

if (stab > 99) {
stab = 0;

if (power_100 || powerOFF)
angleU = 18000;
else
angleU = angleU - (u_set - U_Out);

if (angleU < 1200)
angleU = 1200;
if (angleU > 18000)
angleU = 18000;
}

angle_U_ocr = angleU;


switch (sel_main) {
case 0:


if (tick_t1 >= 6) {
tick_t1 = 0;
show_lcd_main();
}



if (EncData < 0)
EncData = 0;
else if (EncData > 250)
EncData = 250;
u_set = (uint8_t)EncData;

# 272
if (pressed_key == 1) {

lcd_preload();
U_Out = (uint16_t)EncData;
is_power = 1;
power_100 = 0;
powerOFF = 0;

sound_enable = 0;
LATCbits.LATC5 = 0;
TMR1ON = 1;

}

if (pressed_key == 2) {
clearLCD();
sel_main = 3;
lcd_gotoxy(5, 2);
lcd_putc(0x04);
lcd_putc(0x05);
lcd_putc(0x05);
lcd_putc(0x05);
lcd_putc(0x05);
lcd_putc(' ');
lcd_putc(0x06);
lcd_putc(' ');
lcd_putc(0x05);
lcd_putc(0x05);
lcd_putc(0x05);
lcd_putc(0x05);
lcd_putc(0x03);

EncData = 0;
}
break;



case 3:

if (EncData > 4)
EncData = 4;
if (EncData < 0)
EncData = 0;

switch (EncData) {
case 0:
lcd_gotoxy(1, 3);
lcdPrint("   EDIT RESISTANCE  ");
break;
case 1:
lcd_gotoxy(1, 3);
lcdPrint("  SAVE LOAD DEFAULT ");
break;
case 2:
lcd_gotoxy(1, 3);
lcdPrint("   SET 100% POWER   ");
break;
case 3:
lcd_gotoxy(1, 3);
lcdPrint("     ALARM TEMP     ");
break;
case 4:
lcd_gotoxy(1, 3);
lcdPrint("         EXIT        ");
break; }
if (pressed_key == 1) {
switch (EncData) {
case 0:

clearLCD();
EncData = r_whole;
whole_dec = 1;
lcd_gotoxy(1, 2);
lcdPrint("  - Whole part -  ");
lcd_gotoxy(1, 3);
lcdPrint("Long press for save");
lcd_gotoxy(1, 4);
lcdPrint("    to EEPROM.");
sel_main = 1;
break;
case 1:
sel_main = 0;
write_eep(2, U_Out);
EncData = U_Out;
clearLCD();
break;
case 2:
sel_main = 0;
clearLCD();
power_100 = 1;
EncData = U_Out;
show_tp = 0;
break;
case 3:
sel_main = 4;
clearLCD();
AlarmTempT = AlarmTemp;
alarm_enable = 0;
EncData = AlarmTempT;
TempEnT = TempEn;
lcd_gotoxy(1, 1);
lcdPrint("     ALARM TEMP     ");
lcd_gotoxy(1, 2);
lcd_putc(0x03);
break;
case 4:
sel_main = 0;
clearLCD();
EncData = U_Out;
break; }
}
break;

# 390
case 1:

if (whole_dec) {
if (EncData >= 100)
EncData = 99;
if (EncData < 0)
EncData = 0;
r_whole = (uint8_t) EncData;
} else {
if (EncData >= 100)
EncData = 99;
if ((EncData < 10) && (EncData > 5))
EncData = 0;
else if ((EncData > 0) && (EncData < 5))
EncData = 10;
if (EncData < 0)
EncData = 0;

r_dec = (uint8_t) EncData;
}
sprintf(TxtBuf, "Resist:%02u.%u Ohm ", r_whole, r_dec);
lcd_gotoxy(1, 1);
lcdPrint(TxtBuf);

if (pressed_key == 1) {
whole_dec = ~whole_dec;
if (whole_dec) {
lcd_gotoxy(1, 2);
lcdPrint("  - Whole part -  ");
EncData = r_whole;
} else {
lcd_gotoxy(1, 2);
lcdPrint("  - Fract part -  ");
EncData = r_dec;
}
}

if (pressed_key == 2) {
clearLCD();
sel_main = 0;

t_res = (uint32_t) r_whole * 1000 + r_dec * 10;

write_eep(0, r_whole);
write_eep(1, r_dec);
EncData = U_Out;
inc_data = 0;
}

break;

case 4:

if (!alarm_enable) {
if (EncData > 105)
EncData = 105;
if (EncData < 0)
EncData = 0;
AlarmTempT = (uint8_t) EncData;

} else {
if (count_enc < 0)
TempEnT = 0;
if (count_enc > 0)
TempEnT = 1;
}

sprintf(TxtBuf, "Temp:%u%c%-4c", AlarmTempT, 7, 'C');
lcd_gotoxy(2, 2);
lcdPrint(TxtBuf);

sprintf(TxtBuf, "Alarm:%-3s", (TempEnT) ? "ON" : "OFF");
lcd_gotoxy(2, 3);
lcdPrint(TxtBuf);

if (pressed_key == 1) {
alarm_enable = ~alarm_enable;
if (alarm_enable) {

lcd_gotoxy(1, 3);
lcd_putc(0x03);
lcd_gotoxy(1, 2);
lcd_putc(' ');
} else {
EncData = (int8_t) AlarmTempT;
lcd_gotoxy(1, 2);
lcd_putc(0x03);
lcd_gotoxy(1, 3);
lcd_putc(' ');

}
}

if (pressed_key == 2) {
clearLCD();
sel_main = 0;

EncData = U_Out;
AlarmTemp = AlarmTempT;
TempEn = TempEnT;
write_eep(3, AlarmTemp);
write_eep(4, TempEn);
}

break;



case 2:

break;
}

}
return;
}

void init_cpu(void) {
OSCCONbits.SCS = 0b00;
OSCCONbits.IRCF = 0b111;
OSCTUNEbits.PLLEN = 1;
TRISA = 0b00010111;
PORTA = 0;
LATA = 0;

PORTC = 0;
LATC = 0;
TRISC = 0b00000000;
LATCbits.LATC4 = 0;
LATCbits.LATC5 = 0;

RBPU = 0;


WPUB = 0b00111000;




PORTB = 0;
LATB = 0;
TRISB = 0b00111111;


T0CONbits.T0PS = 0b010;
T0CONbits.PSA = 0;

T0CONbits.T0CS = 0;
T0CONbits.T08BIT = 0;
T0CONbits.TMR0ON = 1;
INTCON2bits.TMR0IP = 0;



ADCON2bits.ADCS = 0b110;
ADCON2bits.ACQT = 0b101;
ADCON2bits.ADFM = 1;

ADCON1 = 0;

ADCON0bits.ADON = 1;
ADCON0bits.CHS = 0b0000;
ANSELbits.ANS0 = 1;
IPR1bits.ADIP = 1;
PIE1bits.ADIE = 1;


TMR1CS = 0;
T1OSCEN = 0;
T1CONbits.T1CKPS = 0b11;
T1CONbits.RD16 = 0;
TMR1IE = 1;
TMR1IP = 0;
TMR1ON = 1;


T3CONbits.RD16 = 1;

T3CONbits.T3CCP2 = 0;
T3CONbits.T3CCP1 = 1;



T3CONbits.TMR3CS = 0;


T3CONbits.T3CKPS = 0b11;



TMR3IP = 0;
TMR3IE = 0;
TMR3ON = 1;


CCP1CONbits.CCP1M = 0b1010;
PIE1bits.CCP1IE = 1;
IPR1bits.CCP1IP = 1;
{CCPR1L = (18000 & 0xFF); CCPR1H = (18000 >> 8);};



CCP2CONbits.CCP2M = 0b1011;


{CCPR2L = (100 & 0xFF); CCPR2H = (100 >> 8);};



T2CONbits.T2CKPS = 0b10;
T2CONbits.T2OUTPS = 0b1111;
TMR2ON = 0;
IPR1bits.TMR2IP = 0;
PIE1bits.TMR2IE = 1;
PR2 = 64;


INT0IE = 1;
INTCON2bits.INTEDG0 = 0;
INT0IF = 0;


RCONbits.IPEN = 1;
INTCONbits.TMR0IE = 1;
INTCONbits.GIEL = 1;

(INTCONbits.GIE = 1);
_delay((unsigned long)((50)*(64000000/4000.0)));

initLCD();

PORTBbits.RB7 = 1;

init_ds18b20();

is_power = 1;

cgrom_char(symbol_1, 1);
cgrom_char(symbol_2, 2);
cgrom_char(symbol_3, 3);
cgrom_char(symbol_4, 4);
cgrom_char(symbol_5, 5);
cgrom_char(symbol_6, 6);
cgrom_char(symbol_7, 7);
getU = 1;

}

# 646
int8_t EncPoll(void) {
static int8_t EncVal = 0;
static uint8_t Enc = 0;

Enc <<= 2;
Enc &= 0b00001111;
Enc += ((PORTB & ((1 << 4) | (1 << 5))) >> 4);
EncVal = EncState_[Enc];

if (EncVal == 0x7F) EncVal = 0;

return EncVal;
}

void lcd_preload(void) {
initLCD();
cgrom_char(symbol_1, 1);
cgrom_char(symbol_2, 2);
cgrom_char(symbol_3, 3);
cgrom_char(symbol_4, 4);
cgrom_char(symbol_5, 5);
cgrom_char(symbol_6, 6);
cgrom_char(symbol_7, 7);
clearLCD();

}




void show_lcd_main(void) {
uint16_t pwr_dsp;

sprintf(TxtBuf, "U-In:%-3uV", U_real);
lcd_gotoxy(1, 1);
lcdPrint(TxtBuf);

if (!is_stab) {
lcd_gotoxy(12, 1);
lcdPrint("NOT STAB!");
} else {
lcd_gotoxy(12, 1);
lcdPrint("STABILIZE");
}

sprintf(TxtBuf, "U-Set:%-3uV", u_set);
lcd_gotoxy(1, 3);
lcdPrint(TxtBuf);


if (power_100)
sprintf(TxtBuf, "U-Out:%-3uV", U_real);
else
sprintf(TxtBuf, "U-Out:%-3uV", U_Out);
lcd_gotoxy(1, 2);
lcdPrint(TxtBuf);



sprintf(TxtBuf, "A-le:%-5u ", angleU);
lcd_gotoxy(1, 4);
lcdPrint(TxtBuf);

sprintf(TxtBuf, "%c=%u.%u", 0x02, r_whole, r_dec);
lcd_gotoxy(12, 3);
lcdPrint(TxtBuf);

# 718
lcd_gotoxy(12, 4);
lcd_putc('T');
lcd_putc(':');
if (TempEn) {
if (isTemp == 1) {
if (((temperature / 1000) % 10) == 0) {
if (((temperature / 100) % 10) == 0) {
lcd_putc(((temperature / 10) % 10) + 48);


lcd_putc(7);
lcd_putc(' ');
lcd_putc(' ');
lcd_putc(' ');

} else {
lcd_putc(((temperature / 100) % 10) + 48);
lcd_putc(((temperature / 10) % 10) + 48);


lcd_putc(7);
lcd_putc(' ');
lcd_putc(' ');

}
} else {
lcd_putc(((temperature / 1000) % 10) + 48);
lcd_putc(((temperature / 100) % 10) + 48);
lcd_putc(((temperature / 10) % 10) + 48);


lcd_putc(7);
lcd_putc(' ');

}
} else if (isTemp == 3) {
lcd_putc('?');
lcd_putc('?');
lcd_putc('?');
lcd_putc(' ');
lcd_putc(' ');
lcd_putc(' ');
lcd_putc(' ');


TMR2ON = 1;
}
} else {
sound_enable = 0;
LATCbits.LATC5 = 0;
lcd_putc('-');
lcd_putc('O');
lcd_putc('F');
lcd_putc('F');
lcd_putc('-');
lcd_putc(' ');
lcd_putc(' ');
}

if ((tick_t1_1 <= 100) && (show_tp)) {

pwr_dsp = calc_power(t_res, u_set);

sprintf(TxtBuf, "P*:%c%-4uW", 0x01, pwr_dsp);
lcd_gotoxy(12, 2);
lcdPrint(TxtBuf);

# 791
} else {

sprintf(TxtBuf, "Pr:%c%-4uW", 0x01, watt_disp);

show_tp = 0;
lcd_gotoxy(12, 2);
lcdPrint(TxtBuf);




}

# 815
}

# 825
uint16_t calc_power(uint32_t res, uint16_t u_rl) {
uint32_t tt;
uint16_t p_w;

tt = (uint32_t) u_rl * u_rl * 1000;
p_w = tt / res;
return p_w;

}

