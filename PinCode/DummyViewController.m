//
//  DummyViewController.m
//  PinCode
//
//  Created by Oriol Vilaró on 20/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DummyViewController.h"


@implementation DummyViewController

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
    [pinCode release];
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (IBAction)loginAction:(id)sender {
    
    pinCode=[[PinCode alloc] initWithNibName:@"PinCode" bundle:nil];
    
    // configure code
    [pinCode setCode:1984];
    
    
    
    if (UIDeviceOrientationIsPortrait([[UIDevice currentDevice] orientation]))
    {
        [pinCode.view setFrame:CGRectMake((self.view.frame.size.width/2)-(pinCode.view.frame.size.width/2),
                                          (self.view.frame.size.height/2)-(pinCode.view.frame.size.height/2),
                                          pinCode.view.frame.size.width,
                                          pinCode.view.frame.size.height)];
    }else{
        [pinCode.view setFrame:CGRectMake((self.view.frame.size.height/2)-(pinCode.view.frame.size.width/2),
                                          (self.view.frame.size.width/2)-(pinCode.view.frame.size.height/2),
                                          pinCode.view.frame.size.width,
                                          pinCode.view.frame.size.height)];
    }   
    
    [self.view addSubview:pinCode.view];
    
    


}
@end
