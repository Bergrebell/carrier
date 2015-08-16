#import "CarrierPlugin.h"
#import <CoreTelephony/CTTelephonyNetworkInfo.h> 
#import <CoreTelephony/CTCarrier.h>

@implementation 

- (void)getCarrierName:(CDVInvokedUrlCommand*)command
{
	// defining of a netinfo object; alloc usw gehört zur objekterstellung
	CTTelephonyNetworkInfo *netinfo = [[CTTelephonyNetworkInfo alloc] init];
	// methodenaufruf und speichern in variable vom typ CTCarrier mit namen carrier
	CTCarrier *carrier = [netinfo subscriberCellularProvider];

	// speichert variable "result" vom typ CDVPluginResult
	CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK 
messageAsString:[carrier carrierName]];
	// the method calls the appropriate callback function to complete the process
	[self.commandDelegate sendPluginResult:result callbackId:[command callbackId]];
}

- (void)getCountryCode:(CDVInvokedUrlCommand*)command
{
	CTTelephonyNetworkInfo *netinfo = [[CTTelephonyNetworkInfo alloc] init];
	CTCarrier *carrier = [netinfo subscriberCellularProvider];

	CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
messageAsString:[carrier isoCountryCode]];
	[self.commandDelegate sendPluginResult:result callbackId:[command callbackId]];
}

@end