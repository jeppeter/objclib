#ifndef __PERSON_H__
#define __PERSON_H__

#import "ulog_debug.h"

@interface Person : NSObject 

- (Person*)initwithNames:(char*)firstname lastname:(char*)alastname;
- (void)Greet:(char*)greet;
- (id)init;
@end



#endif /*__PERSON_H__*/