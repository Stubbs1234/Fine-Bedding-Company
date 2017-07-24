//
//  commentspageMatress.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "commentspageMatress.h"

@interface commentspageMatress ()

@end

@implementation commentspageMatress
@synthesize textView;
@synthesize dateLabel;
@synthesize textField1;
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

    _custNameLabel3.text = _custStringCom;
    _dateLabel3.text = _dateStringCom;
    _farbicLabel3.text = _farbicStringCom;
    _fibreLabel3.text = _fibreStringCom;
    _boundLabel3.text = _boundStringCom;
    _quantityLabel3.text = _quantityStringCom;
    _sizeLabel3.text = _sizeStringCom;
    _sasshlabel2.text = _sasshStringCom;
    _innaLabel2.text = _innaStringCom;
    _packedLabel2.text = _packedStringCom;
    _outerLabel2.text = _outerStringCom;
    _palletLabel2.text = _palletStringCom;
    _weeksLabel1.text = _weeksStringCom;
    _devileryLabel1.text = _devileryStringCom;
    _customerLabel1.text = _customerStringCom;
    _ElasticLabel45.text = _ElasticStringCom;
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
    textView.layer.borderWidth = 2.0f;
    textView.layer.borderColor = [[UIColor blackColor] CGColor];
    
    NSDate *today1 = [NSDate date];
    NSDateFormatter *dateFormat1 = [[NSDateFormatter alloc] init];
    [dateFormat1 setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString1 = [dateFormat1 stringFromDate:today1];
    NSLog(@"date: %@", dateString1);
    
    dateLabel.text = dateString1;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    summaryMatress *SMVC = [segue
                          destinationViewController];
    SMVC.custStringF = _custNameLabel3.text;
    SMVC.dateStringF = _dateLabel3.text;
    SMVC.farbicStringF = _farbicLabel3.text;
    SMVC.fibreStringF = _fibreLabel3.text;
    SMVC.boundStringF = _boundLabel3.text;
    SMVC.quantityStringF = _quantityLabel3.text;
    SMVC.sizeStringF = _sizeLabel3.text;
    SMVC.sasshStringF = _sasshlabel2.text;
    SMVC.innaStringF = _innaLabel2.text;
    SMVC.packedStringF = _packedLabel2.text;
    SMVC.outerStringF = _outerLabel2.text;
    SMVC.palletStringF = _palletLabel2.text;
    SMVC.weeksStringF = _weeksLabel1.text;
    SMVC.devileryStringF = _devileryLabel1.text;
    SMVC.customerStringF = _customerLabel1.text;
    SMVC.textviewString = textView.text;
    SMVC.ElasticStringF = _ElasticLabel45.text;
    SMVC.requestedString = textField1.text;
    SMVC.t1StringF =_t1.text;
    SMVC.t2StringF=_t2.text;
    SMVC.t3StringF=_t3.text;
    SMVC.t4StringF=_t4.text;
    SMVC.t5StringF=_t5.text;
    SMVC.t6StringF=_t6.text;
    SMVC.t7StringF=_t7.text;
    SMVC.t8StringF=_t8.text;
    SMVC.t9StringF=_t9.text;
    SMVC.t10StringF=_t10.text;
    SMVC.t11StringF=_t11.text;
    SMVC.t12StringF=_t12.text;
    SMVC.t13StringF=_t13.text;
    SMVC.t14StringF=_t14.text;
    SMVC.t15StringF=_t15.text;
    SMVC.t16StringF=_t16.text;
    SMVC.t17StringF=_t17.text;
    SMVC.t18StringF=_t18.text;
    SMVC.t19StringF=_t19.text;
    SMVC.t20StringF=_t20.text;
    SMVC.t21StringF=_t21.text;
    SMVC.t22StringF=_t22.text;
    SMVC.t23StringF=_t23.text;
    SMVC.t24StringF=_t24.text;
    SMVC.t25StringF=_t25.text;
    SMVC.t26StringF=_t26.text;
    SMVC.t27StringF=_t27.text;
    SMVC.t28StringF=_t28.text;
    SMVC.t29StringF=_t29.text;
    SMVC.t30StringF=_t30.text;
    SMVC.A1StringF=_A1.text;
    SMVC.A2StringF=_A2.text;
    SMVC.A3StringF=_A3.text;
    SMVC.A4StringF=_A4.text;
    SMVC.A5StringF=_A5.text;
    SMVC.ALLStringF=_ALL.text;
    SMVC.MISStringF=_MIS.text;
}
@end