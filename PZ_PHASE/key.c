#include "key.h"
volatile uint8_t key_pressed;


void key_press(void)
{
    static uint16_t count = 0;
    uint8_t key;

    if ((KEY_PORT & (1 << KEY_OK)) == 0)
        key = KEY_OK_EVENT;
    else
        key = KEY_NULL;


    if (key) {// ���� �������� key �� �������
        if (count == DELAYKEY2) { // ����� ����������
            count = DELAYKEY2 + 10;
            key_pressed = KEY_OK_LONG_EVENT;
            return;
        } else count++;

        if (count == DELAYKEY) {
            key_pressed = key;
            return;
        }
    } else 
        count = 0;
        
        //���� ������ ���������� �����
//        if (count == DELAYKEY) {
//            count = DELAYKEY + 10;
//            key_pressed = key;   //�������� �� ����� � ����� 
//
//            return;
//        } else
//            if (count < (DELAYKEY + 5))
//            count++;
//
//    }
//    else count = 0;
}

//�������� ��� ������

uint8_t key_GetKey(void)
{
  uint8_t key = key_pressed;
  
  key_pressed = KEY_NULL;
  return key;
}
