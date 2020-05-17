#import <UIKit/UIKit.h>

static BOOL SCisEnabled = YES;
static NSString *SCtext = nil;

%hook SBUICallToActionLabel

static void loadPrefs() {
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.contejus.sliderchangerprefs.plist"];
    if(prefs)
    {
        SCisEnabled = ( [prefs objectForKey:@"SCisEnabled"] ? [[prefs objectForKey:@"SCisEnabled"] boolValue] : SCisEnabled );
        SCtext = ( [prefs objectForKey:@"SCtext"] ? [prefs objectForKey:@"SCtext"] : SCtext );
    }
}

-(void)setText:(id)arg1 forLanguage:(id)arg2 animated:(bool)arg3 {
    loadPrefs();
    if (SCtext && SCisEnabled) {
        arg1 = SCtext;
    }
    %orig(arg1, arg2, arg3);
}
%end

%ctor {
    loadPrefs();
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.contejus.sliderchangerprefs/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
}