//
//  webCosting.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 17/12/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "webCosting.h"

@implementation webCosting

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *fullURL = @"http://121944.midchesh.com/test/";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_viewWeb loadRequest:requestObj];
}









- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
