
#import "Person.h"

@interface Person() 
	@property (nonatomic,assign) NSString* m_firstname;
	@property (nonatomic,assign) NSString* m_lastname;
	@property (nonatomic,assign) int m_maxage;
	@property (nonatomic,assign) int m_minage;
@end

@implementation Person

-(id)init {
	[super init];
	self.m_firstname = nil;
	self.m_lastname = nil;
	self.m_maxage = 100;
	self.m_minage = 0;
	return self;
}

-(void)dealloc {

	ULOG(@"dealloc");
	if (self.m_firstname) {
		[self.m_firstname release];
	}
	self.m_firstname = nil;
	if (self.m_lastname) {
		[self.m_lastname release];
	}
	self.m_lastname = nil;
	[super dealloc];
}

- (Person*)initwithNames:(char*)firstname lastname:(char*)alastname {
	if (self.m_firstname!=nil){
		[self.m_firstname release];
	}
	self.m_firstname =nil;
	if (self.m_lastname != nil ) {
		[self.m_lastname release];
	}
	self.m_lastname = nil;
	
	self.m_firstname = [NSString stringWithFormat:@"%s",firstname];
	self.m_lastname = [NSString stringWithFormat:@"%s",alastname];
	return self;
}

- (void)Greet:(char*)greet {
	if (self.m_firstname != nil && self.m_lastname != nil) {
	ULOG(@"%s %@ %@",greet,self.m_firstname,self.m_lastname);
}else {
	ULOG(@"%s with not set name",greet);
}
}

+ (int)GetMaxAge:(Person*)person {
	return person.m_maxage;
}

+ (int)GetMinAge:(Person*)person {
	return person.m_minage;
}
@end
