/* 
 * File:   interrupt.h
 * Author: User
 *
 * Created on 18 февраля 2021 г., 11:56
 */
#ifndef INTERRUPT_H
#define	INTERRUPT_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include <stdint.h>
#include "main.h"
//

void __interrupt(low_priority) Inter_lo(void);
void __interrupt(high_priority) Inter_hi(void);

#endif	

