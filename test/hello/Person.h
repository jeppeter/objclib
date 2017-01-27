#ifndef __PERSON_H__
#define __PERSON_H__

#import "ulog_debug.h"

@interface Person : NSObject 

- (Person*)initwithNames:(char*)firstname lastname:(char*)alastname;
- (void)Greet:(char*)greet;
- (id)init;
+ (int)GetMaxAge:(Person*)person;
+ (int)GetMinAge:(Person*)person;
@end



#endif /*__PERSON_H__*/