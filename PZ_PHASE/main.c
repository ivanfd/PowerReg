/*
 * File:   main.c
 * Author: Ivan_fd
 *
 * Created on 18 ������� 2021 �., 10:50
 */


#include <xc.h>
#include "main.h"

uint8_t time_flag = 0; // ��� ������������� �����������
uint16_t timer_val = 0; 
uint16_t temperature;
uint16_t oldTemperature;
uint16_t oldOldTemperature;
uint8_t countTmp = 0;
__bit enTmp = 0;
uint8_t minus;
uint8_t isTemp;
uint8_t AlarmTemp, AlarmTempT; // ����������� ��� ��� ���� ���������� ���
uint8_t TempEn, TempEnT;
uint8_t meas_temp = 1; // �� �������� �����������
uint8_t isTempReady;

uint16_t sound_delay;
uint8_t sound_enable = 0;


uint8_t TxtBuf[21]; // ����� ��� �������

uint8_t read_key = 0; // �� ����� ��������� ������
uint8_t pressed_key = 0; // ��� ������� ������
uint8_t tick_t0 = 0, tick_t1 = 0, tick_t1_1 = 0; // ��� �������
//uint16_t adc_res = 0; 
uint32_t U_meas = 0; // ��������� ���
uint32_t U_summ = 0; // ���� �������� ������ �������
uint32_t U_summTriac = 0; // ���� �������� ������� �������
uint8_t triacON = FALSE;// �� ��������� ����
uint16_t cnt_adc = 0; // �������� ���������
uint16_t U_real = 0; // ������� �������
uint16_t U_Out = 0, U_Out_Sum = 0, Temp_U_Out = 0; // ������� �� �����
uint8_t u_set = 0;// ������,��� ������ �������������.
uint32_t sqrtU_sum = 0; // ���� �������� ������� �� ������� ���������
uint8_t zero = 0; // ������� �������� ����� 0
uint8_t getU; // �� ����� �������������
uint8_t is_chg_pwr = 0; // �� �������� ��������� ���������
uint16_t angleU = MAX_ANGLE; //��� �������� ��������
uint16_t angle_U_ocr = MAX_ANGLE;
uint8_t stab = 1;

__bit is_stab; // �� ������� ����������
__bit is_power; // �� ��������� ���� � ������������
__bit show_tp = 0;
__bit power_100;
; //����� ��������� ��������� 3 ���

uint16_t p_watt; // ��������� ��������� ����
//uint16_t p_watt_c; // ��������� ���� ���� ���� ����������
uint16_t watt_disp; //, watt_disp_t;

const int8_t EncState_[] = {0, -1, 1, ERROR, 1, 0, ERROR, -1, -1, ERROR, 0, 1, ERROR, 1, -1, 0}; // ����� ��������
int16_t EncData = 0; // ˳������� ��������
int8_t count_enc = 0; // ����������� �������� 1, -1
__bit enc_minus = 0;
__bit inc_data = 0; //�� ������ ���������� ��� ������� ��������. �� 1, �� �� 10.

uint8_t r_whole, r_dec; // ���� � ������� ������� ����� ����

uint8_t sel_main = SEL_MAIN;
uint32_t t_res; //, tt, tt2; // ��� ���� ���������� �� 1000

uint8_t const compile_date[12] = __DATE__; // Mmm dd yyyy
uint8_t const compile_time[9] = __TIME__; // hh:mm:ss

__EEPROM_DATA(24, 20, 90, 0, 0, 0, 0, 0); // ����������� ������, 
// 0 - ���� ������� ����� ����
// 1 - ������� ������� ����� ����
// 2 - ������� ���� ������������
// 3 -


const uint8_t symbol_1[8] = {0x00, 0x00, 0x08, 0x15, 0x02, 0x00, 0x00, 0x00}; //~
const uint8_t symbol_2[8] = {0x0E, 0x11, 0x11, 0x11, 0x0A, 0x1B, 0x00, 0x00}; // ��
const uint8_t symbol_3[8] = {0x00, 0x04, 0x1E, 0x1F, 0x1E, 0x04, 0x00, 0x00}; // -->
const uint8_t symbol_4[8] = {0x00, 0x04, 0x0F, 0x1F, 0x0F, 0x04, 0x00, 0x00}; // <--
const uint8_t symbol_5[8] = {0x00, 0x00, 0x1F, 0x1F, 0x1F, 0x00, 0x00, 0x00}; // --
const uint8_t symbol_6[8] = {0x00, 0x0E, 0x1F, 0x1B, 0x1F, 0x0E, 0x00, 0x00}; // o
const uint8_t symbol_7[8] = {0x06, 0x09, 0x09, 0x06, 0x00, 0x00, 0x00, 0x00};


// ������� ���
void main(void) {

    static __bit whole_dec = 0; // �������, �� ������ ��������, ��� �� �����
    static __bit alarm_enable = 0; // �������, �� ������ ��������, �������, �� �����
    static uint8_t powerOFF = 0;


    init_cpu(); // ����������� �����������
   // EncData = U_Out;
    __delay_ms(10);

    // ����� ���������
    lcd_gotoxy(1, 1);
    lcdPrint("-PHASE DIMMER STAB-");
    lcd_gotoxy(1, 2);
    sprintf(TxtBuf, "(c)Ivan_fd v%s", VERSION);
    lcdPrint(TxtBuf);
    lcd_gotoxy(1, 3);
    sprintf(TxtBuf, "%s %s", compile_date, compile_time);
    lcdPrint(TxtBuf);


    __delay_ms(2000);
    CLRWDT();
    clearLCD();
    AlarmTemp = read_eep(EE_ADR_ALARM_TEMP);
    TempEn = read_eep(EE_ADR_TEMP_EN);
    U_Out = read_eep(EE_ADR_LOAD_POWER); // ��������� ������������ � ������
    EncData = U_Out;
    r_whole = read_eep(EE_ADR_R_WHOLE); // ��������� � ������ ���� ������� �����
    r_dec = read_eep(EE_ADR_R_FRACT); // �� �������
    t_res = (uint32_t) (r_whole * 1000 + r_dec * 10); //���������� �����

    while (1) { // ����� ����
        CLRWDT();
        if (read_key) { // ���� ����� ��������� ������
            key_press(); // �� �������
            read_key = 0; // �������� ����������
        }
        pressed_key = key_GetKey(); // ������ �����
        
        oldOldTemperature = temperature;
        isTempReady = readTemp_Single(&temperature, &minus, &time_flag, (uint8_t *) & timer_val);

        if ((oldTemperature != temperature) && (enTmp == 0)) {
            oldTemperature = temperature;
            enTmp = 1;
        }

        if ((isTempReady == TEMP_READY) && (enTmp))
            countTmp++;

        if (countTmp >= 3) {
            countTmp = 0;
            enTmp = 0;
        } else
            temperature = oldOldTemperature;


            //        if ((oldTemperature > (temperature - 5)) || (oldTemperature < (temperature + 5))) {
            //            enTmp = 1;
//            oldTemperature = temperature;
//        }
//        
//        if(enTmp)
            

            if (TempEn) { // ����  ��������� ������� ���������� ��� ���������� �����������
                if ((temperature / 10) >= AlarmTemp) { // ���� ����������� ���������� ���
                    TMR1ON = 0;
                    TRIAC = 0;
                    ; // �������� ������������ �� �����������, ��� ���������� ������
                power_100 = 0;
                sound_enable = 1; // ������� ������
                powerOFF = 1;
            }
        }
        
        if (isTempReady == TEMP_READY)
            isTemp = TEMP_READY;
        if (isTempReady == DS18B20_MISS)
            isTemp = DS18B20_MISS;
        
        //���������� ��������
        count_enc += EncPoll();
        if (((count_enc % 4) == 0) && !(count_enc == 0)) { // �� ���� ��� ��������
            if (IsBit(count_enc, 7)) { // � ����� ��� ����
                if (inc_data)
                    EncData -= 10;
                else{
                    EncData--;
                    //angleU -= 50;
                }
            } else {
                if (inc_data)
                    EncData += 10;
                else{
                    EncData++;
                  //  angleU += 50;
                }
            }
            count_enc = 0;
            is_power = 0;
            show_tp = 1;
            tick_t1_1 = 0;
        }

        // ������� n ��������, ������ ������� ==============================
        if (!getU && (zero == ZERO)) {
            sqrtU_sum = U_summ / cnt_adc; // ����� ���� �������� �� ������� ���������
            U_real = (uint16_t)sqrt(sqrtU_sum); // ����� �����, ������� �� ����

            sqrtU_sum = U_summTriac / cnt_adc; // ����� ���� �������� �� ������� ���������
            U_Out = (uint16_t)sqrt(sqrtU_sum); // ����� �����, ������� �� �����

            U_summTriac = 0;
            U_summ = 0; // 
            getU = TRUE; // ���������� ���������� ��� � ���


            if (u_set > U_real) {// ���� ������� ������� ������ �����������
                is_stab = 0; // �� ������� �����������
            } else
                is_stab = 1;
            
            if(powerOFF)
                TMR1ON = 0; //�������� ������������
            
            if(power_100){
                TMR1ON = 0;
                TRIAC = 1;
            }


            LATAbits.LA3 = !LATAbits.LA3; // ��������
            if (power_100)
                watt_disp = calc_power(t_res, U_real); // ���������� ����� ���������, ��� �����������
            else
                watt_disp = calc_power(t_res, U_Out); // ���������� ����� ���������, ��� �����������
        }

        if (stab > 99) {
            stab = 0;

            if (power_100 || powerOFF)
                angleU = MAX_ANGLE;
            else
                angleU = angleU - (u_set - U_Out);

            if (angleU < 1200)
                angleU = 1200;
            if (angleU > MAX_ANGLE)
                angleU = MAX_ANGLE;
        }

        angle_U_ocr = angleU;

        // ���� �� ������ ����������
        switch (sel_main) {
            case SEL_MAIN:


                if (tick_t1 >= 6) { // ����~ 190ms
                    tick_t1 = 0;
                    show_lcd_main(); // �������� ��� �� ������
                }



                if (EncData < 0) //���� �� ������� ����� 0
                    EncData = 0;
                else if (EncData > 250)
                    EncData = 250;
                u_set = (uint8_t)EncData;


                
                
                
                if (pressed_key == KEY_OK_EVENT) { // ���� ��������� ������ ��������
                    //initLCD();
                    lcd_preload();
                    U_Out = (uint16_t)EncData; // ������� � ���. ���������, �� �� ���������
                    is_power = 1;
                    power_100 = 0;
                    powerOFF = 0;
                    //TMR1ON = 1;
                    sound_enable = 0; // �������� ������
                    SOUND = 0;
                    TMR1ON = 1;
                    //TRIAC = 0;
                }

                if (pressed_key == KEY_OK_LONG_EVENT) { // ���� ��������� ������ �������� �����
                    clearLCD();
                    sel_main = SEL_EDIT_WHAT;
                    lcd_gotoxy(5, 2);
                    lcd_putc(0x04); //                   
                    lcd_putc(0x05); //                   
                    lcd_putc(0x05); //                   
                    lcd_putc(0x05); //                   
                    lcd_putc(0x05); //                   
                    lcd_putc(' '); //                   
                    lcd_putc(0x06); //                     
                    lcd_putc(' '); //                   
                    lcd_putc(0x05); //                   
                    lcd_putc(0x05); //                   
                    lcd_putc(0x05); //                   
                    lcd_putc(0x05); //                   
                    lcd_putc(0x03); // 

                    EncData = 0;
                }
                break;
                //++++++++++++++++++++++++++++++
                // ��� �������� ������� ����
                //++++++++++++++++++++++++++++++
            case SEL_EDIT_WHAT:

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
                        break;                }
                if (pressed_key == KEY_OK_EVENT) { // ���� ��������� ������ ��������
                    switch (EncData) {
                        case 0:
                           // t_power = 0; //��������� ������������
                            clearLCD();
                            EncData = r_whole; //�������� � ������ �������� ���� ������� �����
                            whole_dec = 1; // ������ �������� ���� �������
                            lcd_gotoxy(1, 2);
                            lcdPrint("  - Whole part -  "); // ������� ���� ������� - ������                   
                            lcd_gotoxy(1, 3);
                            lcdPrint("Long press for save");
                            lcd_gotoxy(1, 4);
                            lcdPrint("    to EEPROM.");
                            sel_main = SEL_EDIT_POWER;
                            break;
                        case 1: // �������� � ������ ��� ��������� ������������
                            sel_main = SEL_MAIN; // ������ ���������� � ������� ����
                            write_eep(EE_ADR_LOAD_POWER, U_Out); // ������� ��������� � ������
                            EncData = U_Out;
                            clearLCD();
                            break;
                        case 2: // 100% ���������
                            sel_main = SEL_MAIN; // ������ ���������� � ������� ����
                            clearLCD();
                            power_100 = 1; // �������� ��� �� �����
                            EncData = U_Out;
                            show_tp = 0;
                            break;
                        case 3: // ������������ ������� �����������
                            sel_main = SEL_EDIT_ALARM; // 
                            clearLCD();
                            AlarmTempT = AlarmTemp;
                            alarm_enable = 0; // ������� �������� �����������
                            EncData = AlarmTempT;
                            TempEnT = TempEn;
                            lcd_gotoxy(1, 1);
                            lcdPrint("     ALARM TEMP     ");
                            lcd_gotoxy(1, 2);
                            lcd_putc(0x03); // 
                            break;                            
                        case 4: // �����
                            sel_main = SEL_MAIN; // ������ ���������� � ������� ����
                            clearLCD();
                            EncData = U_Out;
                            break;                    } // end switch (EncData)
                } // end pressed_key
                break;
                // ��� ������ ������������� ��� ����
                // ��� ������ ������� ��������, ��� ������� �� �����������
                //���������: P = 1000 �� (48.40 ��); P = 1500 �� (32.27 ��);
                // P = 2000 �� (24.20 ��); P = 2500 �� (19.36 ��);
                // P = 3000 �� (16.13 ��); P = 3500 �� (13.83 ��);
            case SEL_EDIT_POWER:

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

                if (pressed_key == KEY_OK_EVENT) { // ���� ��������� ������ ��������
                    whole_dec = ~whole_dec; // �� ������ �����, ���� �������, �� �������
                    if (whole_dec) {
                        lcd_gotoxy(1, 2);
                        lcdPrint("  - Whole part -  "); // ������� ���� ������� 
                        EncData = r_whole;
                    } else {
                        lcd_gotoxy(1, 2);
                        lcdPrint("  - Fract part -  "); // ������� ������� ������� 
                        EncData = r_dec;
                    }
                }

                if (pressed_key == KEY_OK_LONG_EVENT) { // ���� ��������� ������ �������� �����
                    clearLCD();
                    sel_main = SEL_MAIN; // ������ ���������� � ������� ����
                    //p_watt = EncData;   // �������� ���� ��������� ����
                    t_res = (uint32_t) r_whole * 1000 + r_dec * 10;
                    //                    p_watt = SQR_U / t_res; // ��������� ���� ���  ������ 220V
                    write_eep(EE_ADR_R_WHOLE, r_whole); // �������� ���� �������
                    write_eep(EE_ADR_R_FRACT, r_dec); // �������� ������� �������
                    EncData = U_Out;
                        inc_data = 0; // ���������� �� ������
                    }

                    break;
                    // ������������ ������� �����������
            case SEL_EDIT_ALARM:

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

                if (pressed_key == KEY_OK_EVENT) { // ���� ��������� ������ ��������
                    alarm_enable = ~alarm_enable;
                    if (alarm_enable) {

                        lcd_gotoxy(1, 3);
                        lcd_putc(0x03); // 
                        lcd_gotoxy(1, 2);
                        lcd_putc(' '); // 
                    } else {
                        EncData = (int8_t) AlarmTempT;
                        lcd_gotoxy(1, 2);
                        lcd_putc(0x03); //
                        lcd_gotoxy(1, 3);
                        lcd_putc(' '); // 

                    }
                }

                if (pressed_key == KEY_OK_LONG_EVENT) { // ���� ��������� ������ �������� �����
                    clearLCD();
                    sel_main = SEL_MAIN; // ������ ���������� � ������� ����
                    //p_watt = EncData;   // �������� ���� ��������� ����
                    EncData = U_Out;
                    AlarmTemp = AlarmTempT;
                    TempEn = TempEnT;
                    write_eep(EE_ADR_ALARM_TEMP, AlarmTemp); // �������� ���� �������                    
                    write_eep(EE_ADR_TEMP_EN, TempEn); // �������� ���� �������
                }

                break;                    
                    //++++++++++++++++++++++++++++++++++++++++++
                    //  ����� ����������� ������������ � ������
                    //++++++++++++++++++++++++++++++++++++++++++
                    case SEL_START_POWER:
                        
                    break;
                }// switch_main

    }// ����� while(1)
    return;
}

void init_cpu(void) {
    OSCCONbits.SCS = 0b00; //Primary clock (determined by CONFIG1H[FOSC<3:0>]).
    OSCCONbits.IRCF = 0b111; //16 MHz (HFINTOSC drives clock directly)
    OSCTUNEbits.PLLEN = 1; //���. ������� ������� �� 4 (64 mhZ)
    TRISA = 0b00010111;
    PORTA = 0;
    LATA = 0;

    PORTC = 0;
    LATC = 0;
    TRISC = 0b00000000;
    TRIAC_B = 0;
    SOUND = 0;

    RBPU = 0; // ��������� ��������� ���.
    //    1 = All PORTB pull-ups are disabled
    //    0 = PORTB pull-ups are enabled provided that the pin is an input and the corresponding WPUB bit is
    WPUB = 0b00111000;
    // WPUB3 = 1;
    // WPUB4 = 1;
    // WPUB5 = 1;

    PORTB = 0;
    LATB = 0;
    TRISB = 0b00111111;

    // ������������ ������� 0
    T0CONbits.T0PS = 0b010; // 1 : 8 prescale value 
    T0CONbits.PSA = 0; //1 = TImer0 prescaler is NOT assigned. Timer0 clock input bypasses prescaler.
    //0 = Timer0 prescaler is assigned. Timer0 clock input comes from prescaler output
    T0CONbits.T0CS = 0; //0 = Internal instruction cycle clock(CLKOUT)
    T0CONbits.T08BIT = 0; // 16 bit
    T0CONbits.TMR0ON = 1;
    INTCON2bits.TMR0IP = 0; // ������� �������� �� ������� 0(1 - �������)
    //TMR0L = TMR0L_V; //  

    //���
    ADCON2bits.ADCS = 0b110; //FOSC/64
    ADCON2bits.ACQT = 0b101; // 12 Tad
    ADCON2bits.ADFM = 1; //  justified

    ADCON1 = 0;

    ADCON0bits.ADON = 1; //ADC is enabled
    ADCON0bits.CHS = 0b0000; //AN0
    ANSELbits.ANS0 = 1; //Set RA0 to analog
    IPR1bits.ADIP = 1; //�������� �������
    PIE1bits.ADIE = 1; // ����������� �� ���

    //������ 1
    TMR1CS = 0; //0 = Internal clock (FOSC/4)
    T1OSCEN = 0; //0 = Timer1 oscillator is shut off
    T1CONbits.T1CKPS = 0b11; //11 = 1:8 Prescale value
    T1CONbits.RD16 = 0; //1 = Enables register read/write of TImer1 in one 16-bit operation
    TMR1IE = 1; // �����������
    TMR1IP = 0; // ������� ��������
    TMR1ON = 1; // �������� ������ 1

    //timer 3
    T3CONbits.RD16 = 1; //1 = Enables register read/write of Timer3 in one 16-bit operation
    //0 = Enables register read/write of Timer3 in two 8-bit operations
    T3CONbits.T3CCP2 = 0; //Timer3 is the capture/compare clock source for CCP2 and Timer1 is the capture/compare clock source for CCP1
    T3CONbits.T3CCP1 = 1;
    //01 = Timer3 is the capture/compare clock source for CCP2 and
    //     Timer1 is the capture/compare clock source for CCP1
    //00 = Timer1 is the capture/compare clock source for CCP1 and CP2
    T3CONbits.TMR3CS = 0; //1 = External clock input from Timer1 oscillator or T13CKI (on the rising edge after the first
    //           falling edge)
    //0 = Internal clock (FOSC/4)
    T3CONbits.T3CKPS = 0b11; //11 = 1:8 Prescale value
    //10 = 1:4 Prescale value
    //01 = 1:2 Prescale value
    //00 = 1:1 Prescale value
    TMR3IP = 0; // ������� ��������
    TMR3IE = 0; // ����������� �� ������� 3 �������
    TMR3ON = 1;
    
    //compare
    CCP1CONbits.CCP1M = 0b1010; // 1010 = Compare mode, generate software interrupt only, CCP1 pin reverts to I/O state
    PIE1bits.CCP1IE = 1; 
    IPR1bits.CCP1IP = 1; // ������� ��������
    SETCCP1(MAX_ANGLE);
    
    
        //compare CCP2 ������ ���� ��������� ���
    CCP2CONbits.CCP2M = 0b1011; //Compare mode: trigger special event, reset timer, start A/D conversion on CCP2 match (CCP2IF bit is set)
//    PIE2bits.CCP2IE = 1; 
//    IPR2bits.CCP2IP = 1; // ������� ��������
    SETCCP2(100);  // 50���
    
    
    // ����������� �� ������� 2 - ��� ���������� ds18b20
    T2CONbits.T2CKPS = 0b10; // 1x = Prescaler is 16
    T2CONbits.T2OUTPS = 0b1111; // 1111 = 1:16 Postscale
    TMR2ON = 0; // ������ ��������
    IPR1bits.TMR2IP = 0; // ������� �������
    PIE1bits.TMR2IE = 1; // ����������� �� ������� 2
    PR2 = 64; // 1.024 ��

    // ������ �����������
    INT0IE = 1; // RB0 ���� ��������� �����������
    INTCON2bits.INTEDG0 = 0; // 1 - �� ���������� ������
    INT0IF = 0;

    // �����������
    RCONbits.IPEN = 1; //��������� �����������
    INTCONbits.TMR0IE = 1; //����������� �� ������� 0
    INTCONbits.GIEL = 1;

    ei();
    __delay_ms(50);
    //init_uart();
    initLCD();

    DQ = 1;

    init_ds18b20();

    is_power = 1;

    cgrom_char(symbol_1, 1); // ����������� ��� ������� � LCD
    cgrom_char(symbol_2, 2);
    cgrom_char(symbol_3, 3);
    cgrom_char(symbol_4, 4);
    cgrom_char(symbol_5, 5);
    cgrom_char(symbol_6, 6);
    cgrom_char(symbol_7, 7);
    getU = TRUE; // ������� ���������� �������

}


//================================
// ���������� ��������
// �������: 0 - �� ���� ������
//           1 - ������
//          -1 - �����  
//=================================

int8_t EncPoll(void) {
    static int8_t EncVal = 0;
    static uint8_t Enc = 0;

    Enc <<= 2;
    Enc &= 0b00001111;
    Enc += ((PORTB & ((1 << ENC_A_PIN) | (1 << ENC_B_PIN))) >> ENC_A_PIN);
    EncVal = EncState_[Enc];
    //if (Enc < 0xfe) EncVal = 0;
    if (EncVal == ERROR) EncVal = 0;

    return EncVal;
}

void lcd_preload(void) {
    initLCD();
    cgrom_char(symbol_1, 1); // ����������� ��� ������� � LCD
    cgrom_char(symbol_2, 2);
    cgrom_char(symbol_3, 3);
    cgrom_char(symbol_4, 4);
    cgrom_char(symbol_5, 5);
    cgrom_char(symbol_6, 6);
    cgrom_char(symbol_7, 7);
    clearLCD();

}


// ���� ���������� �� ������� � ��������� �����

void show_lcd_main(void) {
    uint16_t pwr_dsp;

    sprintf(TxtBuf, "U-In:%-3uV", U_real);
    lcd_gotoxy(1, 1);
    lcdPrint(TxtBuf);

    if (!is_stab) {
        lcd_gotoxy(12, 1); // ������ ��������, �� ����������
        lcdPrint("NOT STAB!"); // �� �������
    } else {
        lcd_gotoxy(12, 1); // ������ ��������, �� ����������
        lcdPrint("STABILIZE"); // �������        
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

    //
//    sprintf(TxtBuf, "Coe:%.4f", coef);
//    lcd_gotoxy(1, 4);
//    lcdPrint(TxtBuf);
//
    lcd_gotoxy(12, 4);
    lcd_putc('T');
    lcd_putc(':');
    if (TempEn) { // ����  ��������� ������� ���������� ��� ���������� �����������
        if (isTemp == 1) {
            if (((temperature / 1000) % 10) == 0) {
                if (((temperature / 100) % 10) == 0) {
                    lcd_putc(((temperature / 10) % 10) + 48);
                  //  lcd_putc('.');
                  //  lcd_putc((temperature % 10) + 48);
                    lcd_putc(7);
                    lcd_putc(' ');
                    lcd_putc(' ');
                    lcd_putc(' ');
                    //lcd_putc(' ');
                } else {
                    lcd_putc(((temperature / 100) % 10) + 48);
                    lcd_putc(((temperature / 10) % 10) + 48);
                    //lcd_putc('.');
                    //lcd_putc((temperature % 10) + 48);
                    lcd_putc(7);
                    lcd_putc(' ');
                    lcd_putc(' ');
                    //lcd_putc(' ');
                }
            } else {
                lcd_putc(((temperature / 1000) % 10) + 48);
                lcd_putc(((temperature / 100) % 10) + 48);
                lcd_putc(((temperature / 10) % 10) + 48);
                //lcd_putc('.');
                //lcd_putc((temperature % 10) + 48);
                lcd_putc(7);
                lcd_putc(' ');
                //lcd_putc(' ');
            }
        } else if (isTemp == 3) {
            lcd_putc('?');
            lcd_putc('?');
            lcd_putc('?');
            lcd_putc(' ');
            lcd_putc(' ');
            lcd_putc(' ');
            lcd_putc(' ');
           // sound_enable = 1; // ������� ������

            TMR2ON = 1;
        }
    } else {
        sound_enable = 0; // �������� ������
        SOUND = 0;
        lcd_putc('-');
        lcd_putc('O');
        lcd_putc('F');
        lcd_putc('F');
        lcd_putc('-');
        lcd_putc(' ');
        lcd_putc(' ');
    }
//
    if ((tick_t1_1 <= 100) && (show_tp)) { // ��������, ���������, ���������
        //tick_t1_1 = 0;
        pwr_dsp = calc_power(t_res, u_set);
        //sprintf(TxtBuf, "ClcP:%c%-4uW %c=%u.%u", 0x01, pwr_dsp, 0x02, r_whole, r_dec);
        sprintf(TxtBuf, "P*:%c%-4uW", 0x01, pwr_dsp);
        lcd_gotoxy(12, 2);
        lcdPrint(TxtBuf);
//        if (is_power) {
//            sprintf(TxtBuf, "PwU:%u%%*", EncData);
//        } else {
//            sprintf(TxtBuf, "PwU:%u%%  ", EncData);
//        }
//        lcd_gotoxy(1, 2);
//        lcdPrint(TxtBuf);        
    } else {
       // sprintf(TxtBuf, "ApxP:%c%04uW %c=%u.%u", 0x01, watt_disp, 0x02, r_whole, r_dec);
        sprintf(TxtBuf, "Pr:%c%-4uW", 0x01, watt_disp);
//        sprintf(TxtBuf, "ApxP:%c%-4uW %c=%u.%u", 0x01, watt_disp, 0x02, r_whole, r_dec);
        show_tp = 0; // ���������� ����� ��������� ���������
        lcd_gotoxy(12, 2);
        lcdPrint(TxtBuf);
//        sprintf(TxtBuf, "PwU:%u%%*", EncData);
//        lcd_gotoxy(1, 2);
//        lcdPrint(TxtBuf);
//        EncData = power;
    }


//    if (is_power) {
//        sprintf(TxtBuf, "PwU:%u%%*", EncData);
//        lcd_gotoxy(1, 2);
//        lcdPrint(TxtBuf);
//    } else {
//        sprintf(TxtBuf, "PwU:%u%%  ", EncData);
//        lcd_gotoxy(1, 2);
//        lcdPrint(TxtBuf);
//    }

}


//==================================================
//  ���������� ��������� ��� ���������� �� �������
//  pwr -  ������� ��������� 0..100%
//  res - ��� ������������, ���������� �� 1000
//  u_rl - �������, ��� ��� ������
//==================================================

uint16_t calc_power(uint32_t res, uint16_t u_rl) {
    uint32_t tt;
    uint16_t p_w;

    tt = (uint32_t) u_rl * u_rl * 1000; // ������� � ������� 
    p_w = tt / res; // ��������� ���� 
    return p_w;
   // return ((p_w / 100 * pwr)+(((p_w % 100) / 10) * pwr / 10) + ((p_w % 10) * pwr / 100)); // �����������, ���������
}


