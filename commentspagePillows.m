//
//  commentspagePillows.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "commentspagePillows.h"

@interface commentspagePillows ()

@end

@implementation commentspagePillows


//systhesize all textfileds, textboxes, button.

- (void)viewDidLoad {
    [super viewDidLoad];
    [[_view1 layer] setBorderColor:[UIColor blackColor].CGColor];
    [[_view1 layer] setBorderWidth:2.0f];
    
    //Puts a copyright date Auto
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    [_copyright setText:[NSString stringWithFormat:@"© Trendsetter Home Furnishings Ltd. All rights reserved %@", dateString]];

    //puts a border around the comments box
    _textView.layer.borderWidth = 2.0f;
    _textView.layer.borderColor = [[UIColor blackColor] CGColor];
    
    //Gets the data from the last page
    _custNameLabel3.text = _custStringCom;
    _dateLabel3.text = _dateStringCom;
    _ticksLabel3.text = _ticksStringCom;
    _fibreLabel3.text = _fibreStringCom;
    _boundLabel3.text = _boundStringCom;
    _quantityLabel3.text = _quantityStringCom;
    _typeLabel3.text = _typeStringCom;
    _sasshlabel2.text = _sasshStringCom;
    _innaLabel2.text = _innaStringCom;
    _packedLabel2.text = _packedStringCom;
    _outerLabel2.text = _outerStringCom;
    _palletLabel2.text = _palletStringCom;
    _weeksLabel1.text = _weeksStringCom;
    _devileryLabel1.text = _devileryStringCom;
    _customerLabel1.text = _customerStringCom;
    _t1.text = _t1StringCom;
    _t2.text = _t2StringCom;
    _t3.text = _t3StringCom;
    _t4.text = _t4StringCom;
    _t5.text = _t5StringCom;
    _t6.text = _t6StringCom;
    _t7.text = _t7StringCom;
    _t8.text = _t8StringCom;
    _t9.text = _t9StringCom;
    _t10.text = _t10StringCom;
    _t11.text = _t11StringCom;
    _t12.text = _t12StringCom;
    _t13.text = _t13StringCom;
    _t14.text = _t14StringCom;
    _t15.text = _t15StringCom;
    _t16.text = _t16StringCom;
    _t17.text = _t17StringCom;
    _t18.text = _t18StringCom;
    _t19.text = _t19StringCom;
    _t20.text = _t20StringCom;
    _t21.text = _t21StringCom;
    _t22.text = _t22StringCom;
    _t23.text = _t23StringCom;
    _t24.text = _t24StringCom;
    _t25.text = _t25StringCom;
    _t26.text = _t26StringCom;
    _t27.text = _t27StringCom;
    _t28.text = _t28StringCom;
    _t29.text = _t29StringCom;
    _t30.text = _t30StringCom;
    _A1.text =  _A1StringCom;
    _A2.text = _A2StringCom;
    _A3.text = _A3StringCom;
    _A4.text = _A4StringCom;
    _A5.text = _A5StringCom;
    _ALL.text= _ALLStringCom;
    _MIS.text = _MISStringCom;
    
    //Puts in the order date
    NSDate *today1 = [NSDate date];
    NSDateFormatter *dateFormat1 = [[NSDateFormatter alloc] init];
    [dateFormat1 setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString1 = [dateFormat1 stringFromDate:today1];
    NSLog(@"date: %@", dateString1);
    
    _dateLabel.text = dateString1;
    
    
    
}

//Allows the data to be share for the next page
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 
 summaryPillows *SPVC = [segue
                         destinationViewController];
 
     SPVC.custStringF = _custNameLabel3.text;
     SPVC.dateStringF = _dateLabel3.text;
     SPVC.ticksStringF = _ticksLabel3.text;
     SPVC.fibreStringF = _fibreLabel3.text;
     SPVC.boundStringF = _boundLabel3.text;
     SPVC.quantityStringF = _quantityLabel3.text;
     SPVC.typeStringF = _typeLabel3 .text;
     SPVC.sasshStringF = _sasshlabel2.text;
     SPVC.innaStringF = _innaLabel2 .text;
     SPVC.packedStringF = _packedLabel2.text;
     SPVC.outerStringF = _outerLabel2.text;
     SPVC.palletStringF = _palletLabel2.text;
     SPVC.weeksStringF = _weeksLabel1.text;
     SPVC.devileryStringF = _devileryLabel1.text;
     SPVC.customerStringF = _customerLabel1.text;
     SPVC.textviewString = _textView.text;
     SPVC.requestedString = _textField1.text;
     SPVC.t1StringF =_t1.text;
     SPVC.t2StringF=_t2.text;
     SPVC.t3StringF=_t3.text;
     SPVC.t4StringF=_t4.text;
     SPVC.t5StringF=_t5.text;
     SPVC.t6StringF=_t6.text;
     SPVC.t7StringF=_t7.text;
     SPVC.t8StringF=_t8.text;
     SPVC.t9StringF=_t9.text;
     SPVC.t10StringF=_t10.text;
     SPVC.t11StringF=_t11.text;
     SPVC.t12StringF=_t12.text;
     SPVC.t13StringF=_t13.text;
     SPVC.t14StringF=_t14.text;
     SPVC.t15StringF=_t15.text;
     SPVC.t16StringF=_t16.text;
     SPVC.t17StringF=_t17.text;
     SPVC.t18StringF=_t18.text;
     SPVC.t19StringF=_t19.text;
     SPVC.t20StringF=_t20.text;
     SPVC.t21StringF=_t21.text;
     SPVC.t22StringF=_t22.text;
     SPVC.t23StringF=_t23.text;
     SPVC.t24StringF=_t24.text;
     SPVC.t25StringF=_t25.text;
     SPVC.t26StringF=_t26.text;
     SPVC.t27StringF=_t27.text;
     SPVC.t28StringF=_t28.text;
     SPVC.t29StringF=_t29.text;
     SPVC.t30StringF=_t30.text;
     SPVC.A1StringF=_A1.text;
     SPVC.A2StringF=_A2.text;
     SPVC.A3StringF=_A3.text;
     SPVC.A4StringF=_A4.text;
     SPVC.A5StringF=_A5.text;
     SPVC.ALLStringF=_ALL.text;
     SPVC.MISStringF=_MIS.text;
     SPVC.resquestedby=_quest.text;
     
 }


//Close Keyboard

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];}


@end
