#import <UIKit/UIKit.h>

%hook SBUICallToActionLabel


-(void)setText:(id)arg1 forLanguage:(id)arg2 animated:(bool)arg3 
{
    NSString *newText = @"This is Tejus's Phone";
    %orig(newText, arg2, arg3);
}
%end