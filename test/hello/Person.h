#ifndef __PERSON_H__
#define __PERSON_H__

#import "ulog_debug.h"

@interface Person : NSObject {
	@private char* m_name;
}

@property (readwrite,assign) char* m_name;
- (void)sayHello;
@end



#endif /*__PERSON_H__*/