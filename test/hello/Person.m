
#import "Person.h"

@implementation Person

@synthesize m_name;
- (void)sayHello {
	ULOG(@"hello %s",self.m_name);
}
@end
