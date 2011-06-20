//
//  PinCode.m
//  PinCode
//
//  Created by Oriol Vilaró on 20/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PinCode.h"


@implementation PinCode

@synthesize code;

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
@synthesize failedAttemptLabel;
@synthesize secondElementTextField;
@synthesize thirdElementTextField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        inputCode=[[NSMutableString alloc] initWithCapacity:4];
        [inputCode setString:@""];
    }
    return self;
}

- (void)dealloc
{
    [inputCode release];
    
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
    [failedAttemptLabel release];
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
    [self setFailedAttemptLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
//    return (interfaceOrientation == UIInterfaceOrientationPortrait);
    return YES;
}

- (IBAction)buttonPressedAction:(id)sender {
    
    [self.failedAttemptLabel setHidden:YES];

    
    switch ([sender tag]) {
            
        case 200: // delete button
            if ([inputCode length]>0) {
                
                // change textfields
                switch ([inputCode length]) {
                    case 1:
                        firstElementTextField.text=@"";
                        break;
                    case 2:
                        secondElementTextField.text=@"";
                        break;
                    case 3:
                        thirdElementTextField.text=@"";
                        break;
                    case 4:
                        fourthElementTextField.text=@"";
                        break;
                    default:
                        break;
                }

                // delete last input
                [inputCode deleteCharactersInRange:NSMakeRange([inputCode length]-1, 1)];
            }
            break;
            
        case 300: // cancel button
            [self.view removeFromSuperview];
            //ToDo: call delegate method unload view controller
            
            break;
            
        default: // number buttons
            [inputCode appendString:[NSString stringWithFormat:@"%d",[sender tag]-100]];
            
            // change textfields
            switch ([inputCode length]) {
                case 1:
                    firstElementTextField.text=@"*";
                    break;
                case 2:
                    secondElementTextField.text=@"*";
                    break;
                case 3:
                    thirdElementTextField.text=@"*";
                    break;
                case 4:
                    fourthElementTextField.text=@"*";
                    break;
                default:
                    break;
            }
            break;
    }
    
    NSLog(@"code:%d inputCode:%@ lenght:%d",code,inputCode,[inputCode length]);
    
    
    if ([inputCode length]==4) {
        
        // check code
        if ([inputCode isEqualToString:[NSString stringWithFormat:@"%d",code]]){
            
            //ToDo: call delegate method correct code
            [self.view removeFromSuperview];

            
            
        }else{ // bad code
            
            //ToDo: call delegate method incorrect code? number of attempts?
            
            // resetting
            [inputCode setString:@""];
            firstElementTextField.text=@"";
            secondElementTextField.text=@"";
            thirdElementTextField.text=@"";
            fourthElementTextField.text=@"";
            [self.failedAttemptLabel setHidden:NO];
        }
    }

}


@end
