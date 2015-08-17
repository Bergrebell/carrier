#import <Cordova/CDV.h>

@interface CarrierPlugin : CDVPlugin {
    
AVAudioRecorder *recorder;
NSTimer *leveltimer;
}

- (void)getAverageNoise:(CDVInvokedUrlCommand*)command;

@end