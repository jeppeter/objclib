#import <Foundation/Foundation.h>

#define ULOG(fmt,...) \
do{ \
	NSString* __pc = [NSString stringWithFormat:fmt,__VA_ARGS__]; \
	NSLog(@"%s:%d %@",__FILE__,__LINE__,__pc); \
	[__pc release];\
	} while(0)


@interface Person : NSObject {
	@private char* m_name;
}

@property (readwrite,assign) char* m_name;
- (void)sayHello;
@end

@implementation Person

@synthesize m_name;
- (void)sayHello {
	ULOG(@"hello %s",self.m_name);
}
@end


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