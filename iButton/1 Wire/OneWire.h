//#include "GLOBAL_DEFS.H"

#define SENSOR_PIN	4
#define LENFORCRC	7
#define SET(x) 				x=0x01 
#define CLEAR(x)			x=0x00
#define SET_VALUE(x, y)		x=y

unsigned char t;

void delay_10us(void);
unsigned char ReadiButton(void);
unsigned char InitiButton(void);
unsigned char CRCCheck(union USR *);
unsigned char ReadByteToiButton(void);
void WriteByteToiButton(unsigned char);
unsigned char CheckForiButtonDisconnect(void);

//#define CLOSE			0x00
//#define OPEN			0x01

union USR
	{
		struct 
		{
			union
			{
				unsigned char BYTE[8];
				unsigned char CRC;
			}KEY;
		}DATA;
		unsigned char BYTE[13];
	};

extern union USR USER;
