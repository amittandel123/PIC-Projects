#include<htc.h>

void main()
{
	Initialize_LCD();
	Send_Command(0x82);					// start frm 1st line & 3rd matrix of LCD
	Display_Data("Amit Tandel",11);
	Delay(1);
	Send_Command(0xC1);					// start frm 2nd line & 2nd matrix of LCD
	Display_Data("Godrej Locks",12);
	Delay(10);
	Clear_LCD();

	Send_Command(0x82);
	Display_Data("Wishes You",10);
	Delay(1);
	Send_Command(0xC0);					// start frm 2nd line & 1st matrix of LCD
	Display_Data(" Happy New Year ",16);
	Delay(10);
}