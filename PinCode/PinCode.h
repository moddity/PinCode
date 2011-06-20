//
//  PinCode.h
//  PinCode
//
//  Created by Oriol Vilaró on 20/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PinCode : UIViewController {
    
    int code;
    
    NSMutableString *inputCode;
    
    // connections
    
    UILabel *titleLabel;
    UIButton *cancelButton;     // tag 300
    
    UILabel *descriptionLabel;
    UILabel *failedAttemptLabel;
    
    UITextField *firstElementTextField;
    UITextField *secondElementTextField;
    UITextField *thirdElementTextField;
    UITextField *fourthElementTextField;
    
    UIButton *oneButton;        // tag 101
    UIButton *twoButton;        // tag 102
    UIButton *threeButton;      // tag 103
    UIButton *fourButton;       // tag 104
    UIButton *fiveButton;       // tag 105
    UIButton *sixButton;        // tag 106
    UIButton *sevenButton;      // tag 107
    UIButton *eightButton;      // tag 108
    UIButton *nineButton;       // tag 109
    UIButton *zeroButton;       // tag 100
    UIButton *deleteButton;     // tag 200


}

@property (nonatomic, assign) int code;

// connections

@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UIButton *cancelButton;

@property (nonatomic, retain) IBOutlet UILabel *descriptionLabel;
@property (nonatomic, retain) IBOutlet UILabel *failedAttemptLabel;

@property (nonatomic, retain) IBOutlet UITextField *firstElementTextField;
@property (nonatomic, retain) IBOutlet UITextField *secondElementTextField;
@property (nonatomic, retain) IBOutlet UITextField *thirdElementTextField;
@property (nonatomic, retain) IBOutlet UITextField *fourthElementTextField;

@property (nonatomic, retain) IBOutlet UIButton *oneButton;
@property (nonatomic, retain) IBOutlet UIButton *twoButton;
@property (nonatomic, retain) IBOutlet UIButton *threeButton;
@property (nonatomic, retain) IBOutlet UIButton *fourButton;
@property (nonatomic, retain) IBOutlet UIButton *fiveButton;
@property (nonatomic, retain) IBOutlet UIButton *sixButton;
@property (nonatomic, retain) IBOutlet UIButton *sevenButton;
@property (nonatomic, retain) IBOutlet UIButton *eightButton;
@property (nonatomic, retain) IBOutlet UIButton *nineButton;
@property (nonatomic, retain) IBOutlet UIButton *zeroButton;
@property (nonatomic, retain) IBOutlet UIButton *deleteButton;

- (IBAction)buttonPressedAction:(id)sender;


@end
