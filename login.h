//
//  login.h
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 14/01/2015.
//  Copyright (c) 2015 Trendsetter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <ParseUI/ParseUI.h>
#import <QuartzCore/QuartzCore.h>

@interface login : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *copyright;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *reEnterPasswordField;
@property (weak, nonatomic) IBOutlet UIView *loginOverlayView;
@property (strong, nonatomic) IBOutlet UIView *view1;

- (IBAction)registerAction:(id)sender;
- (IBAction)registeredButton:(id)sender;

- (IBAction)loginButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *loginUsernameField;
@property (weak, nonatomic) IBOutlet UITextField *loginPasswordField;

@end