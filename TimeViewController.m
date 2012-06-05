//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Sara Duckler on 6/4/12.
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

@end
