//
//  homepage.h
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ParseUI/ParseUI.h>
#import <Parse/Parse.h>
#import <QuartzCore/QuartzCore.h>



@interface homepage : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *admin;
- (IBAction)admin:(id)sender;
@property (nonatomic, strong) IBOutlet UILabel *welcomeLabel;

@property (strong, nonatomic) IBOutlet UILabel *copyright;
@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UILabel *logName;
@property (strong, nonatomic) IBOutlet UIButton *logout;
@property (strong, nonatomic) IBOutlet UIButton *duvet;
@end
