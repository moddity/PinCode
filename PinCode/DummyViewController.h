//
//  DummyViewController.h
//  PinCode
//
//  Created by Oriol Vilaró on 20/06/11.
//  Copyright 2011 Bazinga Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PinCode.h"


@interface DummyViewController : UIViewController<PinCodeDelegate> {
    PinCode *pinCodeViewController;
    UITextField *pinCodeTextField;
}
@property (nonatomic, retain) IBOutlet UITextField *pinCodeTextField;


@end
