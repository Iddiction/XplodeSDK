XplodeSDK
=========

## Getting started

To integrate XplodeSDK all you have to do is include the following in your Podfile

	pod 'XplodeSDK'
	
The initialization should be done in your application’s delegate `application:didFinishLaunchingWithOptions:` method as described below.

Just replace the `appHandle` and `appSecret` with your assigned credentials and you’re good to go.	

	#import <XplodeSDK/XplodeSDK.h>
	
	- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
	{
		/*
			Make sure that the Xplode SDK is initialized is at the top of the method,
			above the root view controller setup.
		*/
		NSString *appHandle = @"YOUR_ASSIGNED_APP_HANDLE";
		NSString *appSecret = @"YOUR_ASSIGNED_APP_SECRET";
		[Xplode initializeWithAppHandle:appHandle appSecret:appSecret andCompletionHandler:^(NSError *error) {
			/* Completion code */
		}];

		/*
		...
		Window and view controller initialization code
		...
		*/

		return YES;
	}
	
For more information check out <a href="https://xplode.iddiction.com/#!wiki">Xplode Wiki pages</a>.
