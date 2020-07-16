											//user defined header

	#include<htc.h>
	#include"LCD.h"
//===========================================================================================================================
											//variable local

													//8 bit data to be displayed on LCD
//============================================================================================================================

											//function body
#define RS RB4
#define RW RB5
#define EN RB6

												
	void LCD_delay(unsigned int ms)
	{
		unsigned int n;
		unsigned int i;
		unsigned int LCD_DELAY = 10000;			  
		for (n=0; n<ms; n++)
			{
				for (i=0; i<LCD_DELAY; i++);
			}     
	}
//---------------------------------------------------------------------------------------------------------------------------

	void LCD_command(unsigned char command)					//Command mode
		{
		    	
			RS=0;
			EN=1;
			PORTC=command;
			LCD_delay(10);
			EN=0;
			LCD_delay(10);

		}
//---------------------------------------------------------------------------------------------------------------------------

	void LCD_putc(unsigned char ascii)					//Data Mode
		{

				
			RS=1;
			EN=1;
			PORTC=ascii;
			LCD_delay(10);
			EN=0;
			LCD_delay(10);


		}
//---------------------------------------------------------------------------------------------------------------------------

	void LCD_puts(unsigned char *lcd_string)   
		{															  			
				while (*lcd_string) 				//first row data
					{					       																		   
						LCD_putc(*lcd_string++);
					} 											
		}
//---------------------------------------------------------------------------------------------------------------------------
	
	void LCD_row_col(unsigned char row ,unsigned char col)
		{
			switch(row)
				{
				 	case 1:		LCD_command(0x80+(col-1));
								break;
									
					case 2: 	LCD_command(0xC0+(col-1));
								break;

					default:	break;	

				}		   		 
		}






//---------------------------------------------------------------------------------------------------------------------------

	void LCD_init()
		{	
			RW=0;
			LCD_command(0x01);	// Clear Display												//Clear Display
			LCD_delay(20);														//Let LCD Driver stabilize
//			LCD_command(0x33);													//8 bit mode, 8 bit mode
//			LCD_command(0x33);													//8 bit mode, 8 bit mode
//			LCD_command(0x32);													//8 bit mode, 4 bit mode
			LCD_command(0x38);													//8 bit mode, 2 line mode
			LCD_command(0x0C);													//Display Cursor (Underline and Blink)
			LCD_command(0x03);													//Display and Cursor Home
			LCD_delay(20);														//Display and Cursor Home requres more time
			LCD_command(0x01);													//Clear Display
			LCD_delay(20);														//Clear Display requires more time
		}
//---------------------------------------------------------------------------------------------------------------------------

void main()
{
	LCD_init();
	LCD_putc('A');
//	LCD_command(0x80);
//	LCD_delay(10);
//	LCD_puts("Amit Tandel");
//	LCD_delay(40);
//	LCD_command(0xC0);
//	LCD_delay(10);
//	LCD_puts("Locks Design");
	LCD_delay(40);
	while(1);
	
}
