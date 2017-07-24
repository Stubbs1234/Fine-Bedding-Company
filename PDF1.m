//
//  PDF1.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 17/12/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "PDF1.h"

@implementation PDF1

- (void)viewDidLoad {
    [super viewDidLoad];
/*NSString *fullURL = @"http://localhost:8888/costing/cost.html";
 NSURL *url = [NSURL URLWithString:fullURL];
 NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
 [_viewWeb loadRequest:requestObj];*/
    self.WebView.hidden = YES;

[self loadDocument:@"Nimbus 2014.pdf" inView:self.viewWeb];
    [self loadDocument:@"FBC Product Guide_2014 FINAL.pdf" inView:self.WebView];

/*
 NSString *html = [NSString stringWithContentsOfFile:@"Nimbus 2014.pdf" encoding:NSUTF8StringEncoding error:nil];
 [self.viewWeb loadHTMLString:html baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle]bundlePath]]];
 NSLog(@"Pdf Loaded");*/
}



-(void)loadDocument:(NSString*)documentName inView:(UIWebView*)webView
{
    NSString *path = [[NSBundle mainBundle] pathForResource:documentName ofType:nil];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (IBAction)Pro:(id)sender {
    self.WebView.hidden = NO;
}
- (IBAction)Nim:(id)sender {
    self.WebView.hidden = YES;
    self.viewWeb.hidden = NO;
}
-(IBAction)back:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
