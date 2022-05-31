/*
 * leon3_bprint.c
 *
 *  Created on: Mar 15, 2020
 *      Author: EdelDiaz UAH
 */
//*******************************INCLUDES***************************************
#include "leon3_uart.h"

//*******************************DEFINES****************************************
//*******************************VARIABLES**************************************
//*******************************FUNCTIONS**************************************
int8_t leon3_print_string(char* str){

	int8_t error=0;
  
	while(*str!='\0'&&(!error)){
		error=leon3_putchar(*str);
		str++;
	}

	while(!leon3_uart_tx_fifo_is_empty());
	
  return error; 
}

//uint8 [255-0]
int8_t leon3_print_uint8(uint8_t i)
{
	
	int8_t error=0;
	uint8_t aux = 100;//centenas
	int8_t first_digit = 0;

	if(i==0)
		error=leon3_putchar('0');
	else{
		while(aux&&(!error)){
			uint8_t digit;

			digit=i/aux;
			i-=aux*digit;
			aux=aux/10;
			if((first_digit)||digit){
				error=leon3_putchar('0'+digit);
				first_digit=1;
			}
		}
	}

	while(!leon3_uart_tx_fifo_is_empty());
	
  return error;
}

// AÑADIR Y COMPLETAR
// *********** LEON_PRINT_UINT32 ******************
int8_t leon3_print_uint32(uint32_t i)
{
	int8_t error=0;
	uint32_t aux = 1000000000;
	int8_t first_digit = 0;

	if(i==0)					    // Si es igual a 0 entonces
		error=leon3_putchar('0');	// Error = 0
	else
	{
		while(aux&&(!error))		// Sino mientras aux y error sea distinto
		{
			uint8_t digit;

			digit=i/aux;
			i-=aux*digit;
			aux=aux/10;
			if((first_digit)||digit)
			{
				error=leon3_putchar('0'+digit);
				first_digit=1;
			}
		}
	}

	while(!leon3_uart_tx_fifo_is_empty());

  return error;
}
