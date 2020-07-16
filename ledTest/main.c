#include<htc.h>
void main()
{
	TRISC=0x00;
	TRISA=0x00;
	
	RC0=1;
	RA4=1;
	while(1);	
}