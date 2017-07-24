//
//  SignUp.h
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 17/01/2015.
//  Copyright (c) 2015 Trendsetter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>
#import <QuartzCore/QuartzCore.h>

@interface SignUp : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *reEnterPasswordField;
@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UILabel *copyright;


- (IBAction)registerAction:(id)sender;
- (IBAction)registeredButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *loginOverlayView;
@property (weak, nonatomic) IBOutlet UITextField *loginUsernameField;
@property (weak, nonatomic) IBOutlet UITextField *loginPasswordField;

@end
