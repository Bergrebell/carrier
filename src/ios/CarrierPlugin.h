#import <Cordova/CDVPlugin.h>

@interface CarrierPlugin : CDVPlugin {
	AVAudioRecorder *recorder;
    NSTimer *leveltimer;
}

- (void)getAverageNoise:(CDVInvokedUrlCommand*)command;

@end