//
//  HypnoAppDelegate.m
//  HypnoTime
//
//  Created by Sara Duckler on 6/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HypnoAppDelegate.h"
#import "HypnosisView.h"
#import "HypnosisViewController.h"
#import "TimeViewController.h"

@implementation HypnoAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
	
	// Create a Hypnosis view controller
	HypnosisViewController *hypnosisViewController = [[HypnosisViewController alloc] init];

	// Create another Hypnosis view controller
	HypnosisViewController *hvc2 = [[HypnosisViewController alloc] init];
	
	// Create a Time view controller
	TimeViewController *timeViewController = [[TimeViewController alloc] init];
	
	// Create a tab controller to keep track of the view controllers
	NSArray *viewControllers = [NSArray arrayWithObjects:hypnosisViewController, timeViewController, hvc2, nil];
	UITabBarController *tabBarController = [[UITabBarController alloc] init];
	[tabBarController setViewControllers:viewControllers];
	
	[self.window setRootViewController:tabBarController];
//	[self.window setRootViewController:timeViewController];
//	[self.window setRootViewController:hypnosisViewController];
	
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
