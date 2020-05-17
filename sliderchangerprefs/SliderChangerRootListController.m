#include "SliderChangerRootListController.h"

@implementation SliderChangerRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)save
{
    [self.view endEditing:YES];
}


@end
