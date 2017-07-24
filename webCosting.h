//
//  webCosting.h
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 17/12/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webCosting : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *viewWeb;
@property (strong, nonatomic) IBOutlet UIWebView *WebView;
@property (strong, nonatomic) IBOutlet UIButton *PDF1;
@property (strong, nonatomic) IBOutlet UIButton *PDF2;
- (IBAction)back:(id)sender;



@end
