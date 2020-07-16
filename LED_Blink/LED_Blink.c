#include<htc.h>
void Delay(unsigned char val);
bit a;

void Delay(unsigned char val)
{
	unsigned int u,v;
	for(u=0;u<val;u++)
		for(v=0;v<1000;v++);
}
void main()
{
	TRISB4=0;
	TRISB5=0;
	a=0;
	while(1)
	{
		a=~a;
		RB4=~a;
		Delay(10);
		RB5=a;	
		Delay(10);
	}
}