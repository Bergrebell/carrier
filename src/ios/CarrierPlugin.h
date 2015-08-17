#import <Cordova/CDV.h>

@interface CarrierPlugin : CDVPlugin {
    
@property AVAudioRecorder *recorder;
@property NSTimer *leveltimer;
}

- (void)getAverageNoise:(CDVInvokedUrlCommand*)command;

@end