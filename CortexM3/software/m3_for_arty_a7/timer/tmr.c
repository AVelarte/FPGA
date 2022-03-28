#include "tmr.h"
#include "xtmrctr.h"
#include "peripherallink.h"     // IRQ definitions

// Instance of the TIMER
static XTmrCtr Timer0;
/*****************************************************************************/

void TimerHandler (void *CallBackRef, u8 TmrCtrNumber){
	print("TimerHandler \r\n");
	XTmrCtr_InterruptHandler(&Timer0);
	XTmrCtr_WriteReg(&Timer0->BaseAddress,
						 TmrCtrNumber,
						 XTC_TCSR_OFFSET,
						 ControlStatusReg |
						 XTC_CSR_INT_OCCURED_MASK);
	// Clear interrupt in NVIC
    NVIC_ClearPendingIRQ(Timer_IRQn);
	
};

int InitialiseTIMER0( void )
{
    int status;

    status = XTmrCtr_Initialize(&Timer0, XPAR_TMRCTR_0_DEVICE_ID);
    if (status != XST_SUCCESS)  {
        return XST_FAILURE;
    }
		
		XTmrCtr_SetHandler(&Timer0, TimerHandler, &Timer0);
		
		return XST_SUCCESS;
}

void testTIMER0 ( void ) 
{
	int statusTest;
	
	statusTest = XTmrCtr_SelfTest(&Timer0, 0UL);
	if (statusTest != XST_SUCCESS)  {
		print("NO VA EL TIMER \r\n");
  }else{
		print("VA BIEN EL TIMER \r\n");
	}
	
}

void setResetValueTIMER0 ( u32 ResetValue )
{
	XTmrCtr_SetResetValue(&Timer0, 0UL, ResetValue);
	//XTmrCtr_Reset(&Timer0, 0UL);
}

void startTimer0 ( void ) 
{
	XTmrCtr_SetOptions(&Timer0, 0UL, XTC_DOWN_COUNT_OPTION | XTC_INT_MODE_OPTION );
//	XTmrCtr_SetOptions(&Timer0, 0UL, XTC_AUTO_RELOAD_OPTION);
	XTmrCtr_Start(&Timer0, 0UL);
}

u32 valorTimer0 ( void )
{
	int status;
	
  status = XTmrCtr_GetValue(&Timer0, 0UL);
	
	return status;
}



