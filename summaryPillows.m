//
//  summaryPillows.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "summaryPillows.h"

@interface summaryPillows ()

@end

@implementation summaryPillows

//systhesize all textfileds, textboxes, button.
@synthesize view1;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //Puts a border in
    [[view1 layer] setBorderColor:[UIColor blackColor].CGColor];
    [[view1 layer] setBorderWidth:2.0f];
    
    //Puts in a year date for the copyright Auto
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    [_copyright setText:[NSString stringWithFormat:@"© Trendsetter Home Furnishings Ltd. All rights reserved %@", dateString]];
    
    //Gets all data that has been enter
    _custNameLabel4.text = _custStringF;
    _dateLabel4.text = _dateStringF;
    _ticksLabel4.text = _ticksStringF;
    _fibreLabel4.text = _fibreStringF;
    _boundLabel4.text = _boundStringF;
    _quantityLabel4.text = _quantityStringF;
    _typeLabel4.text = _typeStringF;
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
    _resquestby.text = _resquestedby;
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
    
    //Gets the user login
    if ([PFUser currentUser]) {
        self.resquestby.text = [NSString stringWithFormat:NSLocalizedString(@"%@", nil), [[PFUser currentUser] username]];
    } else {
        self.resquestby.text = NSLocalizedString(@"No Username Found Contact Support", nil);
    }
    
    //Put the creation date Auto
    NSDate *today1 = [NSDate date];
    NSDateFormatter *dateFormat1 = [[NSDateFormatter alloc] init];
    [dateFormat1 setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString1 = [dateFormat1 stringFromDate:today1];
    NSLog(@"date: %@", dateString1);
    
    _DateLabel1.text = dateString1;
    
    //Border for the comments box
    _textviewtext.layer.borderWidth = 2.0f;
    _textviewtext.layer.borderColor = [[UIColor blackColor] CGColor];
    
    
    //Scroll View
    _scroll.layer.borderWidth = 2.0f;
    _scroll.layer.borderColor = [[UIColor blackColor] CGColor];
    
     //---set the viewable frame of the scroll view---
    _scrollView.frame = CGRectMake(0, 0, 524, 1290);
    //---set the content size of the scroll view---
    [_scroll setContentSize:CGSizeMake(320, 1290)];
    
}


//CSV File
- (IBAction)save:(id)sender {
    NSString *resultline=[NSString stringWithFormat:@"%@,%@,%@,%@,%@,%@,%@.%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@\n",
                          self.custNameLabel4.text,
                          self.dateLabel4.text,
                          self.ticksLabel4.text,
                          self.fibreLabel4.text,
                          self.boundLabel4.text,
                          self.quantityLabel4.text,
                          self.typeLabel4.text,
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
                          self.resquestby.text,
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
                          self.MIS.text];
    
//Emmails the CSV file that has been created
    NSString *docPath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    
    NSString *pillow=[docPath stringByAppendingPathComponent:self.custNameLabel4.text];
    
    [resultline writeToFile:pillow atomically:YES encoding:NSUTF8StringEncoding error:nil];
    //NSLog(@"docpath saved");
    
    NSString *subject = [NSString stringWithFormat:@"%@, %@", self.custNameLabel4.text, self.DateLabel1.text];
    NSString *message = [NSString stringWithFormat:@"Hi, \n\nNew quote for Pillows\n\n \n\nPlease find the attach document for %@. \n\nThis was order on the %@ and was enter by %@.\n\n \n\nThanks\n\n \n%@\n",
                         self.custNameLabel4.text,self.DateLabel1.text,self.resquestby.text,self.resquestby.text];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    picker.mailComposeDelegate  = self;
    
    [picker setToRecipients:[NSArray arrayWithObjects:@"alexstubbsduck@me.com", nil]];
    [picker setSubject:subject];
    //self.custNameLabel4.text
    [picker setMessageBody:message isHTML:NO];
    [picker addAttachmentData:[NSData dataWithContentsOfFile:pillow]
                     mimeType:@"text/csv"
                     fileName:self.custNameLabel4.text];//@"pillow.csv"
    
    
    
    
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


//Close Keyboard
-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];}


@end