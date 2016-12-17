
#import "Person.h"

@interface Person() 
	@property (nonatomic,assign) char* m_firstname;
	@property (nonatomic,assign) char* m_lastname;
	@property (nonatomic,assign) int m_maxage;
	@property (nonatomic,assign) int m_minage;
@end

@implementation Person

-(id)init {
	[super init];
	self.m_firstname = "";
	self.m_lastname = "";
	self.m_maxage = 100;
	self.m_minage = 0;
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

+ (int)GetMaxAge:(Person*)person {
	return person.m_maxage;
}

+ (int)GetMinAge:(Person*)person {
	return person.m_minage;
}
@end
