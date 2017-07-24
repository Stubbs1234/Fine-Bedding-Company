//
//  summaryDuvet.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "summaryDuvet.h"

@interface summaryDuvet ()

@end

@implementation summaryDuvet
@synthesize view1;




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[view1 layer] setBorderColor:[UIColor blackColor].CGColor];
    [[view1 layer] setBorderWidth:2.0f];
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    [_copyright setText:[NSString stringWithFormat:@"© Trendsetter Home Furnishings Ltd. All rights reserved %@", dateString]];
    _custNameLabel4.text = _custStringF;
    _dateLabel4.text = _dateStringF;
    _farbicLabel4.text = _farbicStringF;
    _fibreLabel4.text = _fibreStringF;
    _boundLabel4.text = _boundStringF;
    _quantityLabel4.text = _quantityStringF;
    _sizeLabel4.text = _sizeStringF;
    _sasshlabel3.text = _sasshStringF;
    _innaLabel3.text = _innaStringF;
    _packedLabel3.text = _packedStringF;
    _outerLabel3.text = _outerStringF;
    _palletLabel3.text = _palletStringF;
    _weeksLabel2.text =_weeksStringF;
    _devileryLabel2.text =_devileryStringF;
    _customerLabel2.text = _customerStringF;
    _textviewtext.text = _textviewString;
    _requested.text = _requestedString;
    _t1.text = _t1StringF;
    _t2.text = _t2StringF;
    _t3.text = _t3StringF;
    _t4.text = _t4StringF;
    _t5.text = _t5StringF;
    _t6.text = _t6StringF;
    _t7.text = _t7StringF;
    _t8.text = _t8StringF;
    _t9.text = _t9StringF;
    _t10.text = _t10StringF;
    _t11.text = _t11StringF;
    _t12.text = _t12StringF;
    _t13.text = _t13StringF;
    _t14.text = _t14StringF;
    _t15.text = _t15StringF;
    _t16.text = _t16StringF;
    _t17.text = _t17StringF;
    _t18.text = _t18StringF;
    _t19.text = _t19StringF;
    _t20.text = _t20StringF;
    _t21.text = _t21StringF;
    _t22.text = _t22StringF;
    _t23.text = _t23StringF;
    _t24.text = _t24StringF;
    _t25.text = _t25StringF;
    _t26.text = _t26StringF;
    _t27.text = _t27StringF;
    _t28.text = _t28StringF;
    _t29.text = _t29StringF;
    _t30.text = _t30StringF;
    _A1.text =  _A1StringF;
    _A2.text = _A2StringF;
    _A3.text = _A3StringF;
    _A4.text = _A4StringF;
    _A5.text = _A5StringF;
    _ALL.text=_ALLStringF;
    _MIS.text = _MISStringF;
    if ([PFUser currentUser]) {
        self.en.text = [NSString stringWithFormat:NSLocalizedString(@"%@", nil), [[PFUser currentUser] username]];
    } else {
        self.en.text = NSLocalizedString(@"No Username Found Contact Support", nil);
    }
    _textviewtext.layer.borderWidth = 2.0f;
    _textviewtext.layer.borderColor = [[UIColor blackColor] CGColor];
    
    _scroll.layer.borderWidth = 2.0f;
    _scroll.layer.borderColor = [[UIColor blackColor] CGColor];
    
    //---set the viewable frame of the scroll view---
    _scrollView.frame = CGRectMake(0, 0, 524, 1024);
    
    //---set the content size of the scroll view---
    [_scroll setContentSize:CGSizeMake(320, 1290)];


    NSDate *today1 = [NSDate date];
    NSDateFormatter *dateFormat1 = [[NSDateFormatter alloc] init];
    [dateFormat1 setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString1 = [dateFormat1 stringFromDate:today1];
    NSLog(@"date: %@", dateString1);
    
    _DateLabel1.text = dateString1;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    NSString *resultline=[NSString stringWithFormat:@"%@,%@,%@,%@,%@,%@,%@.%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@\n",
                          self.custNameLabel4.text,
                          self.dateLabel4.text,
                          self.farbicLabel4.text,
                          self.fibreLabel4.text,
                          self.boundLabel4.text,
                          self.ALL.text,
                          self.sizeLabel4.text,
                          self.sasshlabel3.text,
                          self.innaLabel3.text,
                          self.packedLabel3.text,
                          self.outerLabel3.text,
                          self.palletLabel3.text,
                          self.weeksLabel2.text,
                          self.devileryLabel2.text,
                          self.customerLabel2.text,
                          self.DateLabel1.text,
                          self.textviewtext.text,
                          self.requested.text,
                          self.t1.text,
                          self.t2.text,
                          self.t3.text,
                          self.t4.text,
                          self.t5.text,
                          self.t6.text,
                          self.t7.text,
                          self.t8.text,
                          self.t9.text,
                          self.t10.text,
                          self.t11.text,
                          self.t12.text,
                          self.t13.text,
                          self.t14.text,
                          self.t15.text,
                          self.t16.text,
                          self.t17.text,
                          self.t18.text,
                          self.t19.text,
                          self.t20.text,
                          self.t21.text,
                          self.t22.text,
                          self.t23.text,
                          self.t24.text,
                          self.t25.text,
                          self.t26.text,
                          self.t27.text,
                          self.t28.text,
                          self.t29.text,
                          self.t30.text,
                          self.A1.text,
                          self.A2.text,
                          self.A3.text,
                          self.A4.text,
                          self.A5.text,
                          self.MIS.text,
                          self.en.text];

NSString *docPath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
NSString *duvet=[docPath stringByAppendingPathComponent:self.custNameLabel4.text];//@"duvet.csv"

[resultline writeToFile:duvet atomically:YES encoding:NSUTF8StringEncoding error:nil];
//NSLog(@"docpath saved");

    NSString *subject = [NSString stringWithFormat:@"%@, %@", self.custNameLabel4.text, self.DateLabel1.text];
    NSString *message = [NSString stringWithFormat:@"Hi, \n\nNew quote for Duvet\n\n \n\nPlease find the attach document for %@. \n\nThis was order on the %@ and was enter by %@.\n\n \n\nThanks\n\n \n%@\n",
                         self.custNameLabel4.text,self.DateLabel1.text,self.en.text,self.en.text];
    
MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
picker.mailComposeDelegate  = self;

[picker setToRecipients:[NSArray arrayWithObjects:@"alexstubbsduck@me.com", nil]];
[picker setSubject:subject];
    //self.custNameLabel4.text
[picker setMessageBody:message isHTML:NO];
[picker addAttachmentData:[NSData dataWithContentsOfFile:duvet]
                 mimeType:@"text/csv"
                 fileName:self.custNameLabel4.text];//@"duvet.csv"




picker.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
picker.modalPresentationStyle = UIModalPresentationFormSheet;


[self presentViewController:picker animated:YES completion:NULL];



}

-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    // Notifies users about errors associated with the interface
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Result: canceled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Result: saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Result: sent");
            
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Result: failed");
            break;
        default:
            NSLog(@"Result: not sent");
            break;
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
