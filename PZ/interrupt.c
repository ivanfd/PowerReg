#include "interrupt.h"

//===========================================
//  ������� �����������, ������� ��������
//===========================================

void __interrupt(low_priority) Inter_lo(void) {
    if (TMR0IE && TMR0IF) { // any timer 0 interrupts?
        TMR0IF = 0;
        tick_t0++;
      //  TMR0ON = 0; // ���� ������� 0
        TMR0L = TMR0L_V; //
        ADCON0bits.GODONE = 1; // ����� ������������
    }

    if (TMR1IE && TMR1IF) { // any timer 1 interrupts?
        TMR1IF = 0;
        tick_t1++;
        tick_t1_1++;
        read_key = 1;
    }
    return;
}

//===========================================
//  ������� �����������, ������� ��������
//===========================================
void __interrupt(high_priority) Inter_hi(void) {
int16_t pulse = 0, lev = t_power + err; // �������� ����� � ����������� ������� �������������, �������� �� ������������ �������.

    // ����������� �� �������� ����� 0
    if (INT0IE && INT0IF) {
        if (lev >= 50) pulse = 1; // ������� �� ������ �������, ��� ��������� �� ������� ��������
        // ���� pulse == 1, �� ������ �������� �������� �� ��������� ������� ��������. ³��������
        // ������ �������� �� ��������� ���������. ³� ���� ������ �����, �� �������� �� ���������
        // ������� ��������
        if (ps * pulse * pp > 0) pulse = 0;
        if (pulse) {
            TRIAC = 1;
            err = lev - 100; // ������ ������� ��� ��������� ��������
        } else {
            TRIAC = 0;
            err = lev;
        }
        TMR3ON  = 1; // �������� ������ 3
        ps += pp * pulse; // ������ ������� ������� ��������
        pp = -pp; //��������� ��������� ���� ������ ����� 

        if (zero <= (ZERO - 1))
            zero++;
        if (getU == TRUE) {
            getU = FALSE;
            cnt_adc = 0;
            zero = 0;
        }
        INT0IF = 0;
    }

    // ADC - ����������� �� ��������� ���������� ���
    if (ADIE && ADIF) {
        if (zero < ZERO) {
            U_meas = ((ADRESH << 8) + ADRESL);
            U_meas *= U_meas; // �������� � �������
            U_summ += U_meas; // ���� ��������
            cnt_adc++;
        }

        PIR1bits.ADIF = 0;
     //   TMR0ON = 1; // ������ ������� 0

    }



// ����������� �� ������� 3
    if (TMR3IE && TMR3IF){
        TMR3IF = 0;
        TRIAC = 0;   // �������� ������ ����� 4.096��
        TMR3ON  = 0; // �������� ������ 3
    }
            
    return;
}
