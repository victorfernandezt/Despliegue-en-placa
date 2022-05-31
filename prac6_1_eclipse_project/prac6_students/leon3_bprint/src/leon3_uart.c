//*******************************INCLUDES***************************************
#include "leon3_uart.h"

//********************************DEFINES***************************************
//STATUS REGISTER MASKS
//!LEON3 UART A TX FIFO is full
#define LEON3_UART_TFF (0x200)

//!LEON3 UART A TX FIFO is empty
#define LEON3_UART_TFE  (0x004)

#define leon3_UART_TF_IS_FULL() (LEON3_UART_TFF&pLEON3_UART_REGS->Status)

#define MAX_WAIT_TIME 0xAAAAA

//EDEL: defino aqui los registros
//********************************************************
//CTRL REGISTER MASKS

//!LEON3 UART CTRL RX ENABLE MASK
#define LEON3_UART_CTRL_RX_ENABLE (0x001)

//!LEON3 UART CTRL RX IRQ ENABLE MASK
#define LEON3_UART_CTRL_RX_IRQ_ENABLE (0x004)

//!LEON3 UART SET_LOOP_BACK MASK
#define LEON3_UART_CTRL_SET_LOOP_BACK  (0x080)

//********************************VARIABLES*************************************
//Estructura de datos que permite acceder a los registros de la //UART de LEON3
struct UART_regs{
	/** \brief UART  Data Register */
	volatile uint32_t Data;   	/* 0x80000100 */
	/** \brief UART  Status Register */
	volatile uint32_t Status; 	/* 0x80000104 */
	/** \brief UART  Control Register */
	volatile uint32_t Ctrl; 	/* 0x80000108 */
	/** \brief UART  Scaler Register */
	volatile uint32_t Scaler; 	/* 0x8000010C */
};

struct  UART_regs * const pLEON3_UART_REGS= (struct   UART_regs *)0x80000100;

//*******************************FUNCTIONS**************************************

int8_t leon3_putchar(char c){
	uint32_t write_timeout=0;

	while(
			(leon3_UART_TF_IS_FULL())
			&&(write_timeout < MAX_WAIT_TIME)
		){
			write_timeout++;

	}
	if(write_timeout <  MAX_WAIT_TIME)
		pLEON3_UART_REGS->Data=c;

	return (write_timeout ==  MAX_WAIT_TIME);
}

int8_t leon3_uart_tx_fifo_is_empty(){
	return (LEON3_UART_TFE&pLEON3_UART_REGS->Status);
}

// PRACTICA 3B
//*******************************FUNCTIONS**************************************
// Este metodo retorna el valor del registro Data de la UART, en formato uint8_t.
char leon3_getchar()
{
	uint8_t i = (uint8_t) pLEON3_UART_REGS -> Data;	//Sacamos el valor del registro Data
	return i;
}

// Este metodo pone a 1 el campo de Receiver_enable del registro de control de la UART,
// sin modificar el resto de campos, habilitando la recepción de datos a través de la UART.

void leon3_uart_ctrl_rx_enable()
{
	/*uint32_t bit = (1 << 0);

	if ((pLEON3_UART_REGS -> Ctrl & bit) == 0){
		pLEON3_UART_REGS -> Ctrl = ((pLEON3_UART_REGS -> Ctrl) | bit);
	}*/

    //MEJORA: puedes escribirlo directamene usando defines:
	pLEON3_UART_REGS->Ctrl |= LEON3_UART_CTRL_RX_ENABLE;
}


// Este metodo pone a 1 el campo de Receiver_interrupt_enable del registro de control de la
// UART sin modificar el resto de campos, habilitando las interrupciones tras la recepcion de datos

void leon3_uart_ctrl_rx_irq_enable()
{
  pLEON3_UART_REGS->Ctrl |= LEON3_UART_CTRL_RX_IRQ_ENABLE;
}

// Este metodo recibe como parametro el valor que se quiere fijar en el campo loop-back del
// registro de control de la UART. Si es 1, se activa el modo loop-back, y con 0 se deshabilita

void leon3_uart_ctrl_config_rxtx_loop(uint8_t set_rxtxloop)
{
  if(set_rxtxloop)
	  pLEON3_UART_REGS->Ctrl |= LEON3_UART_CTRL_SET_LOOP_BACK;

  else
	  pLEON3_UART_REGS->Ctrl &= ~LEON3_UART_CTRL_SET_LOOP_BACK;
}


