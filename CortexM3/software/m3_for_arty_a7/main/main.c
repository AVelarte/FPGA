/*
 * Copyright:
 * ----------------------------------------------------------------
 * This confidential and proprietary software may be used only as
 * authorised by a licensing agreement from ARM Limited
 *   (C) COPYRIGHT 2014, 2016 ARM Limited
 *       ALL RIGHTS RESERVED
 * The entire notice above must be reproduced on all authorised
 * copies and copies may only be made to the extent permitted
 * by a licensing agreement from ARM Limited.
 * ----------------------------------------------------------------
 * File:     main.c
 * Release Information : Cortex-M3 DesignStart-r0p0-00rel0
 * ----------------------------------------------------------------
 *
 */

/*
 * --------Included Headers--------
 */

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include<stdbool.h>
#include <time.h>

// Xilinx specific headers
#include "xparameters.h"
#include "xgpio.h"

#include "m3_for_arty.h"        // Project specific header
#include "gpio.h"
#include "uart.h"
#include "spi.h"

/*******************************************************************/
volatile uint32_t msTicks = 0;
XGpio Gpio_Trigger;
uint32_t valor = 20;
bool abiertos = FALSE;

void SysTick_Handler(void){
	//print("DONE");
//	msTicks++;
//	if(msTicks>20){
	if(abiertos){
//		XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0x0);
		//print("Llega el fin de conteo del Systick, cierro los interruptores y apago el Systick.\r\n");		
////		if(msTicks == 50){ //Pasan los 500ms
////			msTicks = 0;
			XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0x0);
			SysTick->CTRL  = 0UL;
			abiertos = FALSE;
////		}else{
////			msTicks++;
////		}
	}else{
//		XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0xF);
		//SysTick->CTRL  = 0UL;
		XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0x4);
		
		//print("Llega el fin de conteo del Systick, abro los interruptores y cambio el periodo del Systick.\r\n");
		
		SysTick->CTRL  = 1UL;
		SysTick_Config(5000000 * 3); //Salta una int. cada 100ms * valor_indicado (en este caso son 300 ms)
		XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0xF);
		abiertos = TRUE;
	}
//		//	uint32_t gpio_dip_switches3;
//			//gpio_dip_switches3 = (XGpio_DiscreteRead(&Gpio_Trigger, ARTY_A7_TrgIN_CHANNEL) & 0x1);
//			//	char msg3[24];
//	//sprintf(msg3,"Valor 2: %d, bool: %d \r\n", gpio_dip_switches3, abiertos);  
//			//	print(msg3);
//	msTicks=0;
//}
}

int main (void)
{

    // Define local variables
    int     status;
    int     DAPLinkFittedn;
    int     i;
    int     readbackError;
    char    debugStr[256];
    
    // Illegal location
    volatile u32 emptyLoc;
    volatile u32 QSPIbase;
    
    // BRAM base
    // Specify as volatile to ensure processor reads values back from BRAM
    // and not local storage
    volatile u32 *pBRAMmemory = (u32 *)XPAR_BRAM_0_BASEADDR;

    // CPU ID register
    volatile u32 *pCPUId = (u32 *)0xE000ED00;
    volatile u32 CPUId;
    int          CPU_part;
    int          CPU_rev;
    int          CPU_var;
    char         CPU_name[20];
        
    // Enable the following if you wish to test illegal accesses
    // and debug lock-up conditions
/*    
    u32 *pLegalAddr   = (u32 *)0x40120000;
    u32 *pIllegalAddr = (u32 *)0x40200000;
*/


    // Test data for SPI
    u8 spi_tx_data[8] = {0x01,0x23,0x45,0x67,0x89,0xab,0xcd,0xef};
    u8 spi_rx_data[8] = {0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff};
    
    // Test data for BRAM
    u32 bram_data[8] = {0x01234567, 0x89abcdef, 0xdeadbeef, 0xfeebdaed, 0xa5f03ca5, 0x87654321, 0xfedc0ba9, 0x01020408};

    // Initialise the UART
    InitialiseUART();
  

    // Clear all interrupts
    NVIC_ClearAllPendingIRQ();
    
    // Initialise the GPIO
    status = InitialiseGPIO();
    if (status != XST_SUCCESS)  {
        print("Error - Xilinx GPIO failed to initialise\n");
    }
		print("1");
    // Enable GPIO Interrupts
    //NVIC_EnableIRQ(GPIO0_IRQn);
    NVIC_EnableIRQ(GPIO1_IRQn);
		print("2");
		NVIC_EnableIRQ(GPIOTrg_IRQn);
		print("3");
    EnableGPIOInterrupts();
	print("2");
    // Enable UART Interrupts
    NVIC_EnableIRQ(UART0_IRQn);
    EnableUARTInterrupts();

    // Read the DAPLinkFitted input, (assigned to IRQ[31]).
    // Note the IRQ is never enabled, so polling the pending register will indicate the status
    NVIC_DisableIRQ(DAPLinkFittedn_IRQn);
    DAPLinkFittedn = NVIC_GetPendingIRQ( DAPLinkFittedn_IRQn );


    // Initialise the SPI
    status = InitialiseSPI(DAPLinkFittedn);
    if (status != XST_SUCCESS)  {
        print("Error - Xilinx SPI controllers failed to initialise\n");
    }

    DisableSPIInterrupts();


    // Set DAPLink QSPI to the normal read-write controller
    // Do NOT do this for code running from the DAPLink QSPI.  This will switch from the XIP QSPI
    // controller to the standard controller, so the processor will not be able to access it's code image
    // This should only be done if the XIP QSPI is used to copy code to internal TCM, then boot-load from that TCM
//    SetDAPLinkQSPIMode( QSPI_QSPIMODE );

    // Read the CPU ID register to auto-detect the CPU and revision
    // Note however that code is compiled for a specific processor, so even though
    // the processor can be auto-detected, if the compiled code has extended commands not
    // supported by the processor, then runtime issues can occur
    CPUId    = *pCPUId;
    CPU_var  = ((CPUId & 0x00F00000) >> 20);
    CPU_part = ((CPUId & 0x0000FFF0) >> 4);
    CPU_rev  = CPUId & (0x0000000F);
    
    switch (CPU_part)
    {
        case 0xC21 : strcpy(  CPU_name, "Cortex-M1" ); break;
        case 0xC23 : strcpy(  CPU_name, "Cortex-M3" ); break;
        default    : sprintf( CPU_name, "Unknown %x", CPU_part );
    }
    
    sprintf (debugStr, "Arm %s Revision %i Variant %i\r\n\n", CPU_name, CPU_rev, CPU_var );
    
#ifndef SIM_BUILD    
    // Use Xilinx version print command
    print ("************************************\r\n");
    print ( debugStr );
    print ("Example design for Digilent A7 board\r\n");
    if ( DAPLinkFittedn )
        print ("\nV2C-DAPLink board not detected\r\n");
    else
        print ("\nV2C-DAPLink board detected\r\n");
    print ("Use DIP switches and push buttons to\r\ncontrol LEDS\r\n");
    print (" Version 1.3\r\n");
    print ("************************************\r\n");
#else
    print ( debugStr );
#endif    

    // *****************************************************
    // Test the BRAM
    // *****************************************************
    
    // Write to BRAM
    for( i=0; i< (sizeof(bram_data)/sizeof(u32)); i++)
        *pBRAMmemory++ = bram_data[i];
    readbackError = 0;
    // Reset the pointer
    pBRAMmemory = (u32 *)XPAR_BRAM_0_BASEADDR;

    // Readback
    for( i=0; i< (sizeof(bram_data)/sizeof(u32)); i++)
    {
        if ( *pBRAMmemory++ != bram_data[i] )
            readbackError++;
    }

    if ( readbackError )
        print( "ERROR - Bram readback corrupted.\r\n" );
    else
        print( "Bram readback correct\r\n" );


    // *****************************************************
    // Test the SPI
    // *****************************************************
    
    // Initialise the base QSPI to the correct mode
    status = InitQSPIBaseFlash();
    status = WriteQSPIBaseFlash( spi_tx_data, sizeof(spi_tx_data)/sizeof(u8), 0x0 );
    status = ReadQSPIBaseFlash ( spi_rx_data, sizeof(spi_rx_data)/sizeof(u8), 0x0 );


    // Manually type out, print does work when called back to back from a loop
/*
    sprintf( debugStr, "%x %x %x %x %x %x %x %x\r\n", spi_rx_data[0], spi_rx_data[1], spi_rx_data[2], spi_rx_data[3], 
                                                   spi_rx_data[4], spi_rx_data[5], spi_rx_data[6], spi_rx_data[7] );
    print( debugStr );
*/    
    // Compare buffers
    readbackError = 0;
    for( i=0; i<(sizeof(spi_rx_data)/sizeof(u8)); i++ )
    {
        if( spi_rx_data[i] != spi_tx_data[i] )
            readbackError++;
    }

    if ( readbackError )
        print( "ERROR - Base SPI readback corrupted.\r\n" );
    else
        print( "Base SPI readback correct\r\n" );
   

    // ******************************************************
    // Test exceptions.  Write to legal and illegal addresses
    // ******************************************************
/*    
    // Do an access to an legal location
    emptyLoc = *pLegalAddr;

    // Do an access to an illegal location
    emptyLoc = *pIllegalAddr;

*/
    // print( "Startup complete, entering main interrupt loop\r\n" );

//		uint32_t returnCode;
//		returnCode = SysTick_Config(5000000); // La referencia es 1ms cuando ponemos 50.000 (serán 5.000.000 para 100ms)
//		if (returnCode != 0){
//			print("Error al configurar el SysTick \r\n");
//		}
		
    // Main loop.  Handle LEDs and switches via interrupt
    while ( 1 )
    {			
        /* Main loop. Wait for interrupts to occur */
        /*
        if ( CheckUARTRxBytes() != 0 )
            print ("x");
        */
//			if (msTicks>0){
//				print("A F\r\n");
//				XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_GPIO_TRIGGER, 0xF);
//				msTicks++;
////				uint32_t gpio_dip_switches2;
////				gpio_dip_switches2 = (XGpio_DiscreteRead(&Gpio_Trigger, ARTY_A7_GPIO_TRIGGER) & 0x4) >> 2;
////				char msg2[24];
////				sprintf(msg2,"Valor 1: %d\r\n", gpio_dip_switches2);  
////				print(msg2);
//			}
//			if (msTicks==10){
//				print("A 0\r\n");
//				msTicks=0;
//				XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_GPIO_TRIGGER, 0x0);
				
				
//				gpio_dip_switches3 = (XGpio_DiscreteRead(&Gpio_Trigger, ARTY_A7_GPIO_TRIGGER) & 0x4) >> 2;
//				char msg3[24];
//				sprintf(msg3,"Valor 2: %d\r\n", gpio_dip_switches3);  
//				print(msg3);
			//}	
////////////			uint32_t gpio_trg = 0;
////////////			gpio_trg = (XGpio_DiscreteRead(&Gpio_Trigger, ARTY_A7_GPIO_TRIGGER) & 0x4) >> 2;
////////////			if (gpio_trg == 1){
////////////				gpio_trg = 0;
////////////				print("Llega Trigger del GPIO, inicio el Systick.\r\n");
////////////				SysTick->CTRL  = 1UL;
////////////				returnCode = SysTick_Config(500000);
////////////			}
			

    // Read dip switches, change LEDs to match
    
    
    }
}

/* Interrupt handler for DAPLink Fitted */
// This routine should never be called as the signal is used as IO
// Routine created to prevent exceptions in the case the IRQ is enabled
void DAPLinkFittedn ( void )
{
    // Clear the IRQ and disable any future IRQs
    NVIC_ClearPendingIRQ(DAPLinkFittedn_IRQn);
    NVIC_DisableIRQ(DAPLinkFittedn_IRQn);
}
