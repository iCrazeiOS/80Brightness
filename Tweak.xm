@interface SBBrightnessController : NSObject
+(id)sharedBrightnessController;
-(void)_setBrightnessLevel:(float)arg1 showHUD:(BOOL)arg2;
@end

%hook SpringBoard
-(void) applicationDidFinishLaunching:(id)arg1 {
	%orig;
	[[%c(SBBrightnessController) sharedBrightnessController] _setBrightnessLevel:0.8 showHUD:FALSE];
}
%end