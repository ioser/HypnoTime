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
- (void)viewWillAppear:(BOOL)animated
{
	NSLog(@"TimeViewController's view will appear");
	[super viewWillAppear:animated];
	[self showCurrentTime:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
	NSLog(@"TimeViewController's view will disappear");
	[super viewWillDisappear:animated];
}

//OVERRIDE
- (void)viewDidUnload
{
	[super viewDidUnload];
	NSLog(@"viewDidUnload method called.");
//	timeLabel = nil;
	NSLog(@"timeLabel = %@", timeLabel);
}

//OVERRIDE
- (void)viewDidLoad
{
	[super viewDidLoad];
	NSLog(@"viewDidLoad method of HypnosisViewController class called.");

	// Set the view's background color
	[[self view] setBackgroundColor:[UIColor yellowColor]];
}

//OVERRIDE
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	nibNameOrNil = @"TimeViewController";
	nibBundleOrNil = [NSBundle mainBundle];
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
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
