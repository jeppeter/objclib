
#include "Person.h"


int main(int argc,char* argv[])
{
	Person* brad = [[Person alloc]init];
	int i;
	[brad initwithNames:"john" lastname:"Fang"];
	for (i=1;i<argc;i++){
		[brad Greet:argv[i] ];
	}

	ULOG(@"minage %d maxage %d",[Person GetMaxAge:brad],[Person GetMinAge:brad]);

	if (brad != nil) {
		[brad release];
	}
	brad = nil;
	return 0;
}