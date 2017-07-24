//
//  SizeDuvet.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 17/12/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "SizeDuvet.h"

@implementation SizeDuvet
int variabla;

//systhesize all textfileds, textboxes, button.
@synthesize pickerView;
@synthesize textField1;
@synthesize view1;
@synthesize togs;
@synthesize quantityTogs;
@synthesize checkBoxButton;
@synthesize mis;
//PickerView

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [pickerView setHidden:YES];
    if (textField1.editing == YES) {
        [textField1 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 1;}
    
    NSLog(@"variabla %d",variabla);
    [pickerView reloadAllComponents];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

//Datasource

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
    if (variabla == 1) {
        return [pickerArray1 count];
    }
    else {
        return 0;
    }
    
    
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    if (variabla == 1) {
        return [pickerArray1 objectAtIndex:row];
    }
    else{
        return 0;}
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [[view1 layer] setBorderColor:[UIColor blackColor].CGColor];
    [[view1 layer] setBorderWidth:2.0f];
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    [_copyright setText:[NSString stringWithFormat:@"© Trendsetter Home Furnishings Ltd. All rights reserved %@", dateString]];
    self.quantityTogs.hidden = YES;
    self.togs.hidden = YES;
    _custlabel.text = _custStringSize;
    _datelabel.text = _dateStringSize;
    _boundlabel.text = _boundStringSize;
    _fibrelabel.text = _fibreStringSize;
    mis.text =@"No";
    

    //Delgate
    
    [pickerView setHidden:YES];
    //Fabric
    //1
    pickerArray1 = [[NSMutableArray alloc] initWithObjects:
                    @"A5100X80WC220 220 COTTON PERCALE Fabric",
                    @"A5100X80WC245 245 COTTON PERCALE Fabric",
                    @"A5100X80WC255 255 COTTON PERCALE Fabric",
                    @"A5100X80WC260 260 COTTON PERCALE Fabric",
                    @"A5104X56POLY220 220CM 104X56 POLY MF Fabric",
                    @"A5104X56POLY245 245CM 104X56 POLY MF Fabric",
                    @"A5104X72POLY220 104X72  PEACHSKIN Fabric",
                    @"A5104X74POLY220 220 cm PEACHSKIN Fabric",
                    @"A5110X76WPC220 220cm 110X76 POL/COT Fabric",
                    @"A5110X76WPC245 245cm 110x76 POL/COT Fabric",
                    @"A5133X72MCSQ220 220 cm 133X72 Modal Fabric",
                    @"A5133X72MCSQ245 245 cm 133X72 Modal Fabric",
                    @"A5133X72THF2220 220 cm 133X72 THF2 Fabric",
                    @"A5133X72THF2245 245 cm 133X72 THF2 Fabric",
                    @"A5133X72WCSQ220 220 cm 133X72 Cotton Fabric",
                    @"A5133X72WCSQ245 245 cm 133X72 Cotton Fabric",
                    @"A5133X72WCSQ260 133X72 COT DOBBY 260 Fabric",
                    @"A5140X120WCST245 245CM COTTON STRIPE Fabric",
                    @"A5146X72POLY213 146X72 POLY 213 Fabric",
                    @"A5146X72POLY220 146X72 POLY 220 Fabric",
                    @"A5150X65WPC245 245cm 105x65 65/35 Fabric",
                    @"A5150X75POLYWS220 220 WOVEN STRIPE Fabric",
                    @"A5150X75POLYWS245 245 WOVEN STRIPE Fabric",
                    @"A515COR238 238cm 15gm NON WOVEN Corovin",
                    @"A515COR260 260cm 15gm NON WOVEN Corovin",
                    @"A515COR320 320cm 15gm NON WOVEN Corovin",
                    @"A5173X110DIA220 220cm 173X110 DIA Fabric",
                    @"A5173X110DIA245 245cm 173X110 DIA Fabric",
                    @"A5173X110MCBR220 MOD/COT 5MM SQ 220 Fabric",
                    @"A5173X110MCBR245 MOD/COT 5MM SQ 245 Fabric",
                    @"A5173X97MCSQ245 245/173X97 F/ COT SQ Fabric",
                    @"A5190X190POLYWS220 220CM 190X190 POLYW Fabric",
                    @"A571X45WPC243 243 cm 71x45 POL/COT Fabric",
                    @"A572X52WC220 220 cm 72x52 WHT COT Fabric",
                    @"A572X52WC245 245 cm 72x52 WHT COT Fabric",
                    @"A576X56WPC220 220 cm 75x56 POL/COT Fabric",
                    @"A576X56WPC245 245 cm 75x56 POL/COT Fabric",
                    @"A576X56WPC255 255cm 76x56 POL/COT Fabric",
                    @"A576X56WPC265 265cm 76x56 POL/COT Fabric",
                    @"A576X68WPC150 150cm 76x68, 30s30s Fabric",
                    @"A576X68WPC240 240cm 76x68, 30s30s Fabric",
                    @"A576X68WPC245 245cm 76x68, 30s30s Fabric",
                    @"A588X58WPC220 220cm 88x58 POLY/CTN Fabric",
                    @"A588X58WPC240 240cm 88x58 POLY/CTN Fabric",
                    @"A588X58WPC245 245cm 88x58 POLY/CTN Fabric",
                    @"A594X71BUB170 94X71 BUBBLE Fabric",
                    @"A594X71BUB220 220 cm BUBBLE FABRIC",
                    @"A594X71BUB245 245cm BUBBLE FABRIC",
                    @"A594X71EMB220 94X71 EMBOSSED Fabric",
                    @"A594X71EMB245 94X71 EMBOSSED Fabric",
                    @"A594X71HER220 220 CM HERRINGBONE Fabric",
                    @"A594X71HER245 245 CM HERRINGBONE Fabric",
                    @"A594X71POLY220 220 cm PEACHSKIN Fabric",
                    @"A594X71POLY240 240cm MICROFIBRE Fabric",
                    @"A594X71POLY245 245cm MICROFIBRE Fabric",
                    @"A594X71POLY255 255cm MICROFIBRE Fabric",
                    @"A594X71POLY260 260cm MICROFIBRE Fabric",
                    @"A594X71POLY265 265cm MICROFIBRE Fabric",
                    @"A594X71SUCK220 94X71 SEERSUCKER Fabric",
                    @"A594X71SUCK245 94X71 SEERSUCKER Fabric",
                    @"A594X71SUCK260 94X71 SEERSUCKER 260 Fabric",
                    @"A596X64POLY220 220cm 96X64 POLY Fabric",
                    @"A5AMPRINT250 250 AMICOR PRINT Fabric",
                    @"A5PINQLT150	PINSONIC QLTD FABRIC", nil];

    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backgroundTap:)]];
    
}



-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString *text = [self pickerView:pickerView titleForRow:row forComponent:component];
    UITextField *current = nil;
    if (variabla == 1) current = self.textField1;
    current.text = text;
}

//Close PickerView

-(void)backgroundTap:(UITapGestureRecognizer *)tapGR{
    self.pickerView.hidden = YES;
    // And maybe..
    variabla = 0;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    packingDuvet *PDVC = [segue
                          destinationViewController];
    

    PDVC.farbicStringPack = textField1.text;
    PDVC.custStringPack = _custlabel.text;
    PDVC.dateStringPack = _datelabel.text;
    PDVC.fibreStringPack = _fibrelabel.text;
    PDVC.boundStringPack = _boundlabel.text;
    PDVC.t1StringPack =_t1.text;
    PDVC.t2StringPack=_t2.text;
    PDVC.t3StringPack=_t3.text;
    PDVC.t4StringPack=_t4.text;
   PDVC.t5StringPack=_t5.text;
   PDVC.t6StringPack=_t6.text;
   PDVC.t7StringPack=_t7.text;
    PDVC.t8StringPack=_t8.text;
    PDVC.t9StringPack=_t9.text;
    PDVC.t10StringPack=_t10.text;
    PDVC.t11StringPack=_t11.text;
    PDVC.t12StringPack=_t12.text;
    PDVC.t13StringPack=_t13.text;
    PDVC.t14StringPack=_t14.text;
    PDVC.t15StringPack=_t15.text;
    PDVC.t16StringPack=_t16.text;
    PDVC.t17StringPack=_t17.text;
    PDVC.t18StringPack=_t18.text;
    PDVC.t19StringPack=_t19.text;
   PDVC.t20StringPack=_t20.text;
    PDVC.t21StringPack=_t21.text;
    PDVC.t22StringPack=_t22.text;
    PDVC.t23StringPack=_t23.text;
    PDVC.t24StringPack=_t24.text;
    PDVC.t25StringPack=_t25.text;
    PDVC.t26StringPack=_t26.text;
    PDVC.t27StringPack=_t27.text;
    PDVC.t28StringPack=_t28.text;
    PDVC.t29StringPack=_t29.text;
    PDVC.t30StringPack=_t30.text;
    PDVC.A1StringPack=_A1.text;
    PDVC.A2StringPack=_A2.text;
    PDVC.A3StringPack=_A3.text;
   PDVC.A4StringPack=_A4.text;
    PDVC.A5StringPack=_A5.text;
    PDVC.ALLStringPack=togs.text;
    PDVC.MISStringPack=mis.text;
    PDVC.quantityStringPack=quantityTogs.text;
}

//Close Keyboard

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkButton:(id)sender {
    
    if (!checked) {
        [checkBoxButton setImage:[UIImage imageNamed:@"checkBoxMarked@2x.png"] forState:UIControlStateNormal];
        checked = YES;
        self.quantityTogs.hidden = NO;
        self.togs.hidden = NO;
        self.checkBoxButton.hidden = YES;
        self.togs.text = @"Yes";
    }
    
    else if (checked) {
        [checkBoxButton setImage:[UIImage imageNamed:@"checkBox@2x.png"] forState:UIControlStateNormal];
        checked = NO;
        
    }
    
}
@end