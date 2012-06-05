//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Sara Duckler on 6/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

//OVERRIDE
- (void)loadView
{
	// Create a view
	CGRect viewFrame = [[UIScreen mainScreen] bounds];
	HypnosisView *hypnosisView = [[HypnosisView alloc] initWithFrame:viewFrame andColor:[UIColor grayColor]];
	
	// Set our view
	[self setView:hypnosisView];
}

//OVERRIDE
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nil bundle:nil];
	if (self) {
		// Get the tab bar item
		UITabBarItem *tabBarItem = [self tabBarItem];
		
		// Give the tab bar item a label string
		[tabBarItem setTitle:@"Hypnosis"];
	}
	
	return self;
}

@end
