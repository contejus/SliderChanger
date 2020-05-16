%hook SBLockScreenView
-(void)setCustomSlideToUnlockText:(id)arg1
{
    arg1 = @"SliderChanger";
    %orig(arg1);
}
%end