//
//  PinCode.h
//  PinCode
//
//  Created by Oriol Vilaró on 20/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PinCode : UIViewController {
    
    UILabel *titleLabel;
    UIButton *cancelButton;
    
    UILabel *descriptionLabel;
    
    UITextField *firstElementTextField;
    UITextField *secondElementTextField;
    UITextField *thirdElementTextField;
    UITextField *fourthElementTextField;
    
    UIButton *oneButton;
    UIButton *twoButton;
    UIButton *threeButton;
    UIButton *fourButton;
    UIButton *fiveButton;
    UIButton *sixButton;
    UIButton *sevenButton;
    UIButton *eightButton;
    UIButton *nineButton;
    UIButton *zeroButton;
    UIButton *deleteButton;

}

@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UIButton *cancelButton;

@property (nonatomic, retain) IBOutlet UILabel *descriptionLabel;

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
