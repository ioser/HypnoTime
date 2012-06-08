//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Richard Millet on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (IBAction)showCurrentTime:(id)sender
{
	NSLog(@"Showing the current time.");
	
	NSDate *now = [NSDate date];
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
	
	[timeLabel setText:[dateFormatter stringFromDate:now]];
}

//OVERRIDE
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nil bundle:nil];
	if (self) {
		// Get the tab bar item
		UITabBarItem *tabBarItem = [self tabBarItem];
		
		// Give the tab bar item a label string
		[tabBarItem setTitle:@"Time"];
		
		// Create an image from a file
		UIImage *tabBarImage = [UIImage imageNamed:@"Time.png"];
		[tabBarItem setImage:tabBarImage];
	}

	return self;
}

@end
