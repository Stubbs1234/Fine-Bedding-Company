//
//  homepage.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "homepage.h"


@interface homepage ()

@end

@implementation homepage
@synthesize copyright;
@synthesize view1;
@synthesize logName;
//@synthesize welcomeLabel;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    [copyright setText:[NSString stringWithFormat:@"© Trendsetter Home Furnishings Ltd. All rights reserved %@", dateString]];
    
    [[view1 layer] setBorderColor:[UIColor blackColor].CGColor];
    [[view1 layer] setBorderWidth:2.0f];

    if ([PFUser currentUser]) {
    self.welcomeLabel.text = [NSString stringWithFormat:NSLocalizedString(@"Welcome %@", nil), [[PFUser currentUser] username]];
} else {
    self.welcomeLabel.text = NSLocalizedString(@"No Username Found Contact Support", nil);
}
}
- (IBAction)logoutButton:(id)sender {
    [PFUser logOut];
    //UIStoryboard *Main = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    //UIPageViewController* ViewController = [Main instantiateViewControllerWithIdentifier:@"LOGIN"];
    
    //[self presentModalViewController: ViewController animated: YES];
    [self performSegueWithIdentifier:@"Logout" sender:self];

}

- (IBAction)admin:(id)sender {
    [self performSegueWithIdentifier:@"ADmin" sender:self];
}
@end
