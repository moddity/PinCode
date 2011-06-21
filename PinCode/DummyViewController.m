//
//  DummyViewController.m
//  PinCode
//
//  Created by Oriol Vilaró on 20/06/11.
//  Copyright 2011 Bazinga Systems. All rights reserved.
//

#import "DummyViewController.h"


@implementation DummyViewController
@synthesize pinCodeTextField;

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
    [pinCodeTextField release];
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
    [self setPinCodeTextField:nil];
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
    
    pinCodeViewController=[[PinCode alloc] initWithNibName:@"PinCode" bundle:nil];
    
    [pinCodeViewController setDelegate:self];
    
    
    if (UIDeviceOrientationIsPortrait([[UIDevice currentDevice] orientation]))
    {
        [pinCodeViewController.view setFrame:CGRectMake(
                            (self.view.frame.size.width/2)-(pinCodeViewController.view.frame.size.width/2),
                            (self.view.frame.size.height/2)-(pinCodeViewController.view.frame.size.height/2),
                            pinCodeViewController.view.frame.size.width,
                            pinCodeViewController.view.frame.size.height)];
    }else{
        [pinCodeViewController.view setFrame:CGRectMake(
                            (self.view.frame.size.height/2)-(pinCodeViewController.view.frame.size.width/2),
                            (self.view.frame.size.width/2)-(pinCodeViewController.view.frame.size.height/2),
                            pinCodeViewController.view.frame.size.width,
                            pinCodeViewController.view.frame.size.height)];
    }  
    
    [self.view addSubview:pinCodeViewController.view];

}

# pragma mark -- PinView delegate methods

-(BOOL) isPinCodeCorrect:(NSString *)pinCode{
    
    if ([self.pinCodeTextField.text isEqualToString:pinCode]) {
        
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Login" message:@"Login successful" delegate:self cancelButtonTitle:@"Close" otherButtonTitles:nil];
        
        [alertView show];
        [alertView release];
        
        return YES;
    }
    
    return NO;
}


-(void) pinCodeViewWillClose{
    
    [pinCodeViewController release];
    pinCodeViewController=nil;
}

@end



