#ifndef __ULOG_DEBUG_H__
#define __ULOG_DEBUG_H__

#import <Foundation/Foundation.h>

#define ULOG(fmt,...) \
do{ \
	NSString* __pc = [NSString stringWithFormat:fmt,__VA_ARGS__]; \
	NSLog(@"%s:%d %@",__FILE__,__LINE__,__pc); \
	[__pc release];\
} while(0)


#endif /*__ULOG_DEBUG_H__*/