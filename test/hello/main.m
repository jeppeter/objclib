
#include "Person.h"






int main(int argc,char* argv[])
{
	Person* brad = [Person new];
	int i;
	for (i=1;i<argc;i++){
		brad.m_name = argv[i];
		[brad sayHello];
	}
	return 0;
}