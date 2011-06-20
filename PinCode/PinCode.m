//
//  PinCode.m
//  PinCode
//
//  Created by Oriol Vilaró on 20/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PinCode.h"


@implementation PinCode
@synthesize firstElementTextField;
@synthesize fourthElementTextField;
@synthesize oneButton;
@synthesize twoButton;
@synthesize threeButton;
@synthesize fourButton;
@synthesize fiveButton;
@synthesize sixButton;
@synthesize sevenButton;
@synthesize eightButton;
@synthesize nineButton;
@synthesize zeroButton;
@synthesize deleteButton;
@synthesize titleLabel;
@synthesize cancelButton;
@synthesize descriptionLabel;
@synthesize secondElementTextField;
@synthesize thirdElementTextField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [firstElementTextField release];
    [fourthElementTextField release];
    [secondElementTextField release];
    [thirdElementTextField release];
    [titleLabel release];
    [cancelButton release];
    [descriptionLabel release];
    [oneButton release];
    [twoButton release];
    [threeButton release];
    [fourButton release];
    [fiveButton release];
    [sixButton release];
    [sevenButton release];
    [nineButton release];
    [eightButton release];
    [zeroButton release];
    [deleteButton release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setFirstElementTextField:nil];
    [self setFourthElementTextField:nil];
    [self setSecondElementTextField:nil];
    [self setThirdElementTextField:nil];
    [self setTitleLabel:nil];
    [self setCancelButton:nil];
    [self setDescriptionLabel:nil];
    [self setOneButton:nil];
    [self setTwoButton:nil];
    [self setThreeButton:nil];
    [self setFourButton:nil];
    [self setFiveButton:nil];
    [self setSixButton:nil];
    [self setSevenButton:nil];
    [self setNineButton:nil];
    [self setEightButton:nil];
    [self setZeroButton:nil];
    [self setDeleteButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonPressedAction:(id)sender {
}
@end
