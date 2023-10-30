#include "interrupt.h"

//===========================================
//  функція переривання, низький пріоритет
//===========================================

void __interrupt(low_priority) Inter_lo(void) {
    uint16_t tmrtmp;
    
    if (TMR0IE && TMR0IF) { // any timer 0 interrupts?
        TMR0IF = 0;
        tick_t1++;
        tick_t1_1++;
        read_key = 1;
    }



    if (TMR1IE && TMR1IF) { // any timer 1 interrupts?
        TRIAC = 0; // 
        tmrtmp = ((uint16_t) CCPR1H << 8 | CCPR1L) + 1;
        TMR1ON = 0;
        SETTMR1(tmrtmp);
        TMR1ON = 1;
        //TMR1 = CCPR1; //((uint16_t) CCPR1H << 8 | CCPR1L) + 1;
        //TMR1H = CCPR1H;
        //TMR1L = CCPR1L + 2;
        //CCPR1
        TMR1IF = 0;
    }

//     переривання від таймера 3
//    if (TMR3IE && TMR3IF) {
//        TMR3IF = 0;
//        tick_t1++;
//        tick_t1_1++;
//        read_key = 1;
//    }

//    if (TMR1IE && TMR1IF) { // any timer 1 interrupts?
//        TMR1IF = 0;
//        tick_t1++;
//        tick_t1_1++;
//        read_key = 1;
//    }

    if (TMR2IE && TMR2IF) { // any timer 1 interrupts?
        TMR2IF = 0;
        if (++timer_val >= 782) // затримка ~ 800мс
        {
            timer_val = 0;
            time_flag = 1;
            TMR2ON = 0;
        }
        if (sound_enable) {
            TMR2ON = 1;
            sound_delay++;
            if (sound_delay <= 400) {
                //sound_delay = 0;
                //SOUND = ~SOUND;
                SOUND = 1;
            } else if ((sound_delay > 400)&&(sound_delay < 800))
                SOUND = 0;
            else {
                SOUND = 0;
                sound_delay = 0;
            }
        }
    }
    return;
}

//===========================================
//  функція переривання, високий пріоритет
//===========================================
void __interrupt(high_priority) Inter_hi(void) {

    // переривання по переходу через 0
    if (INT0IE && INT0IF) {

        //       TMR3ON  = 1; // ввімкнути таймер 3
        (power_100) ? TRIAC = 1 : TRIAC = 0; // зняти з симістора управляючий сигнал
        triacON = FALSE;
        TMR1H = 0;
        TMR1L = 0;
        SETCCP1(angle_U_ocr);
        if (zero < ZERO)
            zero++;
        if (getU == TRUE) {
            getU = FALSE;
            cnt_adc = 0;
            zero = 0;
            //TMR0L = TMR0L_V + 4; //
        }
        INT0IF = 0;
        //stab = 1;
     //   stab++;
        //U_Out_Cnt++;
    }

    // переривання від модуля порівняння
    if (CCP1IE && CCP1IF) {
        CCP1IF = 0;
        TRIAC = 1; // вмикаємо симістор
        triacON = TRUE;
        TMR1H = 0xFE;
        TMR1L = 0x0B;
    }

//        // переривання від модуля порівняння
//    if (CCP2IE && CCP2IF) {
//        CCP2IF = 0;
//    }
    
    // ADC - переривання по закінченню вимірювання АЦП
    if (ADIE && ADIF) {
        if (zero < ZERO) {
            //     if (cnt_adc < 1024) {
            U_meas = ((ADRESH << 8) + ADRESL);
            U_summ += U_meas*U_meas; // складаємо суми квадратів
            if (triacON)
                U_summTriac += U_meas * U_meas; // складаємо суми квадратів тільки при ввімкненому симісторі
            cnt_adc++;
        }
        stab++;
        PIR1bits.ADIF = 0;
       // TMR0ON = 1; // Запуск таймера 0

    }



   

 





            
    return;
}
