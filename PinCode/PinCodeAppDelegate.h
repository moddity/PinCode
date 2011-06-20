//
//  PinCodeAppDelegate.h
//  PinCode
//
//  Created by Oriol Vilaró on 20/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PinCode.h"

@interface PinCodeAppDelegate : NSObject <UIApplicationDelegate> {

    PinCode *pinCode;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
