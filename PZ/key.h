
#ifndef KEY_H
#define	KEY_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include "main.h"
#include <stdint.h>

#define DELAYKEY 7     // debounce
#define DELAYKEY2 50// 300

#define KEY_PORT    PORTB
//#define KEY_OK_TRIS TRISBbits.TRISB2
//#define KEY_UP_TRIS TRISBbits.TRISB3
//#define KEY_DOWN_TRIS TRISBbits.TRISB4
//  входи до яких підключені кнопки
#define KEY_OK 3
//#define KEY_UP 2
//#define KEY_DOWN 4
//#define KEY_EXIT 3

#define KEY_OK_EVENT 1
#define KEY_OK_LONG_EVENT 2
#define KEY_NULL 0

//extern uint8_t key_events;

void key_press(void);
uint8_t key_GetKey(void);

#endif	/* XC_HEADER_TEMPLATE_H */

