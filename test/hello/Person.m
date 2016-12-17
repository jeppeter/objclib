
#import "Person.h"

@interface Person() 
	@property (nonatomic,assign) char* m_firstname;
	@property (nonatomic,assign) char* m_lastname;

@end

@implementation Person

-(id)init {
	[super init];
	self.m_firstname = "";
	self.m_lastname = "";
	return self;
}

- (Person*)initwithNames:(char*)firstname lastname:(char*)alastname {
	self.m_firstname = firstname;
	self.m_lastname = alastname;
	return self;
}

- (void)Greet:(char*)greet {
	ULOG(@"%s %s %s",greet,self.m_firstname,self.m_lastname);
}
@end
