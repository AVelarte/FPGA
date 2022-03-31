/*
 * Copyright:
 * ----------------------------------------------------------------
 * This confidential and proprietary software may be used only as
 * authorised by a licensing agreement from ARM Limited
 *   (C) COPYRIGHT 2014, 2018 ARM Limited
 *       ALL RIGHTS RESERVED
 * The entire notice above must be reproduced on all authorised
 * copies and copies may only be made to the extent permitted
 * by a licensing agreement from ARM Limited.
 * ----------------------------------------------------------------
 * File:     gpio.c
 * Release Information : Cortex-M3 DesignStart-r0p0-00rel0
 * ----------------------------------------------------------------
 *
 */

/*
 * --------Included Headers--------
 */
#include <stdio.h>
#include "gpio.h"
#include "xparameters.h"        // Project memory and device map
#include "xgpio.h"              // Xilinx GPIO routines
#include "peripherallink.h"     // IRQ definitions
#include "tmr.h"
#include <stdbool.h>
/************************** Variable Definitions **************************/
/*
 * The following are declared static to this module so they are zeroed and so they are
 * easily accessible from a debugger
 *
 * Also they are initialised in main, but accessed by the IRQ routines
 */
 
static XGpio Gpio_Led_DIPSw;   /* The driver instance for GPIO Device 0 */
static XGpio Gpio_RGBLed_PB;   /* The driver instance for GPIO Device 1 */
static XGpio Gpio_DAPLink;     /* The driver instance for the DAPLink GPIO */
static XGpio Gpio_Trigger;
static uint32_t valor = 20;
extern bool faseExc;
/*****************************************************************************/

// Initialise the GPIO and zero the outputs
int InitialiseGPIO( void )
{
    // Define local variables
    int status;

    /*
     * Initialize the GPIO driver so that it's ready to use,
     * specify the device ID that is generated in xparameters.h
    */
    status = XGpio_Initialize(&Gpio_Led_DIPSw, XPAR_AXI_GPIO_0_DEVICE_ID);
    if (status != XST_SUCCESS)  {
        return XST_FAILURE;
    }

    status = XGpio_Initialize(&Gpio_RGBLed_PB, XPAR_AXI_GPIO_1_DEVICE_ID);
    if (status != XST_SUCCESS)  {
        return XST_FAILURE;
    }

    status = XGpio_Initialize(&Gpio_DAPLink, XPAR_DAPLINK_IF_0_AXI_GPIO_0_DEVICE_ID);
    if (status != XST_SUCCESS)  {
        return XST_FAILURE;
    }
		
		status = XGpio_Initialize(&Gpio_Trigger, XPAR_AXI_GPIO_2_DEVICE_ID);
    if (status != XST_SUCCESS)  {
        return XST_FAILURE;
    }

    // GPIO0
    // Port0 drives led_4bits.  Set bottom 4 UART ports to be outputs.
    XGpio_SetDataDirection(&Gpio_Led_DIPSw, ARTY_A7_LED_CHANNEL, 0xFFFFFFF0);
//    ARTY_A7_GPIO0->TRI0 = 0xfffffff0;

    // Port 1 inputs the dip switches. Set to be inputs
    XGpio_SetDataDirection(&Gpio_Led_DIPSw, ARTY_A7_DIP_CHANNEL, 0xFFFFFFFF);
//    ARTY_A7_GPIO0->TRI1 = 0xffffffff;

    // GPIO1
    // Port0 drives led_rgb.  Set 12 UART ports to be outputs.
    XGpio_SetDataDirection(&Gpio_RGBLed_PB, ARTY_A7_RGB_CHANNEL, 0xfffff000);
//    ARTY_A7_GPIO1->TRI0 = 0xfffff000;
    // Port 1 inputs the push button switches. Set to be inputs
    XGpio_SetDataDirection(&Gpio_RGBLed_PB, ARTY_A7_PB_CHANNEL, 0xffffffff);
//    ARTY_A7_GPIO1->TRI1 = 0xffffffff;
    
    // DAPLink GPIO
    // Single channel
    XGpio_SetDataDirection(&Gpio_DAPLink, ARTY_A7_DAPLINK_GPIO_CHANNEL, 0x00000000);


    // Default value of LEDs
    XGpio_DiscreteWrite(&Gpio_RGBLed_PB, ARTY_A7_RGB_CHANNEL, 0x0);
//    ARTY_A7_GPIO1->DATA0 = 0x0;
    
    // Write 0xA to LEDs
    XGpio_DiscreteWrite(&Gpio_Led_DIPSw, ARTY_A7_LED_CHANNEL, 0x0);
//    ARTY_A7_GPIO0->DATA0 = 0x0;

		XGpio_SetDataDirection(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0xFFFFFFF0);
		XGpio_SetDataDirection(&Gpio_Trigger, ARTY_A7_TrgIN_CHANNEL, 0xffffffff);
		XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0x0);

    return XST_SUCCESS;
    
}

// Set GPIO interrupts
void EnableGPIOInterrupts( void )
{
    // Push buttons and DIP switches are on Channel 2
    XGpio_InterruptEnable(&Gpio_RGBLed_PB, XGPIO_IR_CH2_MASK);
    XGpio_InterruptEnable(&Gpio_Led_DIPSw, XGPIO_IR_CH2_MASK);
		XGpio_InterruptEnable(&Gpio_Trigger, XGPIO_IR_CH2_MASK);

    // Having enabled the M1 to handle the interrupts, now enable the GPIO to send the interrupts
    XGpio_InterruptGlobalEnable(&Gpio_RGBLed_PB);
    XGpio_InterruptGlobalEnable(&Gpio_Led_DIPSw);
		XGpio_InterruptGlobalEnable(&Gpio_Trigger);
}

void openSwitch (void)
{
	XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0x1);
}

void closeSwitch (void)
{
	XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0x0);
}

void GPIOTrg_Handler (void){

		// Para la simulacion
//		if( XGpio_DiscreteRead(&Gpio_Trigger, ARTY_A7_TrgIN_CHANNEL) & 0x1){
//			print("Trigger Positivo \n\r");
//			XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0x4);
//			SysTick->CTRL  = 1UL;
//			SysTick_Config(50000 * valor);
//			XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0xC);
//		}
		
		// Apertura de los switch
		if( XGpio_DiscreteRead(&Gpio_Trigger, ARTY_A7_TrgIN_CHANNEL) & 0x1){
			startTimer0(25000 * valor);
			faseExc = TRUE;
			XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0x4); //REVISAR (puede ser que s�lo haga falta en simulaci�n)
		}
		// Clear interrupt from GPIO
		XGpio_InterruptClear(&Gpio_Trigger, XGPIO_IR_MASK);
    // Clear interrupt in NVIC
    NVIC_ClearPendingIRQ(GPIOTrg_IRQn);
}
// Define the GPIO interrupt handlers
void GPIO0_Handler ( void )
{
	volatile uint32_t gpio_dip_switches;

    // Read dip switches, change LEDs to match
    gpio_dip_switches = XGpio_DiscreteRead(&Gpio_Led_DIPSw, ARTY_A7_DIP_CHANNEL);   // Capture DIP status
    XGpio_DiscreteWrite(&Gpio_Led_DIPSw, ARTY_A7_LED_CHANNEL, gpio_dip_switches);   // Set LEDs

		// PARA SIMULAR EL TRIGGER DE LA FUENTE
		XGpio_DiscreteWrite(&Gpio_Trigger, ARTY_A7_TrgOUT_CHANNEL, 0xC); // Pongo a 1 el pin A3 y A4
		//print("Mando un pulso por el pin A3 y A4 \r\n");
	
	
	
    // Clear interrupt from GPIO
    XGpio_InterruptClear(&Gpio_Led_DIPSw, XGPIO_IR_MASK);
    // Clear interrupt in NVIC
    NVIC_ClearPendingIRQ(GPIO0_IRQn);
}

void GPIO1_Handler ( void )
{

    int mask, led_val, incr;
    volatile uint32_t gpio_push_buttons;
    volatile uint32_t gpio_leds_rgb;
		
    // For LEDs, cycle around colour each time respective push button is pressed
    // Only change if a pushbutton is pressed.
    // This prevents a double change as the button is released.
    if( XGpio_DiscreteRead(&Gpio_RGBLed_PB, ARTY_A7_PB_CHANNEL) != 0 )
    {
        // LEDs are on a 3 spacing.  So multiply button press by 2^3 to increment the correct LED
        gpio_push_buttons = XGpio_DiscreteRead(&Gpio_RGBLed_PB, ARTY_A7_PB_CHANNEL);
        gpio_leds_rgb     = XGpio_DiscreteRead(&Gpio_RGBLed_PB, ARTY_A7_RGB_CHANNEL);
        if ( gpio_push_buttons & 0x1 ) {
                mask = 0x7;
                incr = 0x1;
								//if(valor<335){		 //Para que no se pase de las 335ms 	
								valor++;
								//}
        } else if ( gpio_push_buttons & 0x2 ) {
                mask = (0x7 << 3);
                incr = (0x1 << 3);
								if(valor>0){			
									valor--;
								}
        } else if ( gpio_push_buttons & 0x4 ) {
                mask = (0x7 << 6);
                incr = (0x1 << 6);
					//if(valor<326){			//Para que no se pase de las 335ms 	
								valor+=10;
							//	}
					
        } else if ( gpio_push_buttons & 0x8 ) {
                mask = (0x7 << 9);
                incr = (0x1 << 9);
					if(valor>10){			
									valor-=10;
								}
        }

        led_val = gpio_leds_rgb & mask;
        led_val = (led_val+incr) & mask;
        gpio_leds_rgb = (gpio_leds_rgb & ~mask) | led_val;
        
        XGpio_DiscreteWrite(&Gpio_RGBLed_PB, ARTY_A7_RGB_CHANNEL, gpio_leds_rgb);
    }
    // Clear interrupt from GPIO
    XGpio_InterruptClear(&Gpio_RGBLed_PB, XGPIO_IR_MASK);
    // Clear interrupt in NVIC
		NVIC_ClearPendingIRQ(GPIO1_IRQn);
		// Variable "valor" para establecer el tiempo de apertura de los switch
		char msg[24];
		sprintf(msg,"Valor evitar exc. (ms): %.1f\r\n", ((float)valor)/2);  
		print(msg);
}

/* Note : No interrupt handler for DAPLink GPIO, it does not have the IRQ line connected
          No requirement as it is only a toggle between QSPI XIP and QSPI normal controllers
          Instead, standard routine provided
*/

void SetDAPLinkQSPIMode( u32 mode )
{
    // Set the qspi_sel line
    XGpio_DiscreteWrite(&Gpio_DAPLink, ARTY_A7_DAPLINK_GPIO_CHANNEL, mode);
    
}

void IncLeds( void )
{
    // Routine to allow other blocks to indicate activity
    volatile uint32_t gpio_dip_switches;

    // Read dip switches, change LEDs to match
    gpio_dip_switches = XGpio_DiscreteRead(&Gpio_Led_DIPSw, ARTY_A7_DIP_CHANNEL);   // Capture DIP status
    XGpio_DiscreteWrite(&Gpio_Led_DIPSw, ARTY_A7_LED_CHANNEL, (gpio_dip_switches+1));   // Set LEDs
    
}
