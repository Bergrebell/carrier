#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreAudio/CoreAudioTypes.h>


@interface CarrierPlugin : CDVPlugin {
	AVAudioRecorder *recorder;
    NSTimer *leveltimer;
}

- (void)getAverageNoise:(CDVInvokedUrlCommand*)command;

@end