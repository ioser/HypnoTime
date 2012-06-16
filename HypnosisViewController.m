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
- (void)viewDidLoad
{
	[super viewDidLoad];
	NSLog(@"viewDidLoad method of HypnosisViewController class called.");
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
		
		// Set the image for the tab bar item
		UIImage *image = [UIImage imageNamed:@"Hypno.png"];
		
		// Put that image on the tab bar item
		[tabBarItem setImage:image];
		
		// Set the view's background color
		[[self view] setBackgroundColor:[UIColor yellowColor]];
	}
	
	return self;
}

@end
