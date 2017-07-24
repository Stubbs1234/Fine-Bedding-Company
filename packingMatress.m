//
//  packingMatress.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "packingMatress.h"

@interface packingMatress ()

@end

@implementation packingMatress
int variabla;

@synthesize pickerView;
@synthesize textField1;
@synthesize textField2;
@synthesize textField3;
@synthesize textField4;
@synthesize textField5;
@synthesize textField6;
@synthesize textField7;
@synthesize textField8;
@synthesize textField9;
@synthesize textField10;
@synthesize textField11;
@synthesize textField12;
@synthesize quantityField;
@synthesize custField;
@synthesize dateField;
@synthesize weekField;
@synthesize quantity;
@synthesize quantity2;
@synthesize view1;

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [pickerView setHidden:YES];
    if (textField1.editing == YES) {
        [textField1 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 1;
    }else if (textField2.editing == YES) {
        [textField2 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 2;
    } else if (textField3.editing == YES) {
        [textField3 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 3;
    }else if (textField4.editing == YES) {
        [textField4 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 4;
    }else if (textField5.editing == YES) {
        [textField5 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 5;
    }else if (textField6.editing == YES) {
        [textField6 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 6;
    }else if (textField7.editing == YES) {
        [textField7 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 7;
    }else if (textField8.editing == YES) {
        [textField8 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 8;
    }else if (textField9.editing == YES) {
        [textField9 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 9;
    }else if (textField10.editing == YES) {
        [textField10 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 10;
    }else if (textField11.editing == YES) {
        [textField11 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 11;
    }else if (textField12.editing == YES) {
        [textField12 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 12; }
    
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
    }else if (variabla == 2) {
        return [pickerArray2 count];
    }else if (variabla == 3) {
        return [pickerArray3 count];
    }else if (variabla == 4) {
        return [pickerArray4 count];
    }else if (variabla == 5) {
        return [pickerArray5 count];
    }else if (variabla == 6) {
        return [pickerArray6 count];
    }else if (variabla == 7) {
        return [pickerArray7 count];
    }else if (variabla == 8) {
        return [pickerArray8 count];
    }else if (variabla == 9) {
        return [pickerArray9 count];
    }else if (variabla == 10) {
        return [pickerArray10 count];
    }else if (variabla == 11) {
        return [pickerArray11 count];
    }else if (variabla == 12) {
        return [pickerArray12 count];
    }
    else {
        return 0;
    }
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    if (variabla == 1) {
        return [pickerArray1 objectAtIndex:row];
    }else if (variabla == 2) {
        return [pickerArray2 objectAtIndex:row];
    }else if (variabla == 3) {
        return [pickerArray3 objectAtIndex:row];
    }else if (variabla == 4) {
        return [pickerArray4 objectAtIndex:row];
    }else if (variabla == 5) {
        return [pickerArray5 objectAtIndex:row];
    }else if (variabla == 6) {
        return [pickerArray6 objectAtIndex:row];
    }else if (variabla == 7) {
        return [pickerArray7 objectAtIndex:row];
    }else if (variabla == 8) {
        return [pickerArray8 objectAtIndex:row];
    }else if (variabla == 9) {
        return [pickerArray9 objectAtIndex:row];
    }else if (variabla == 10) {
        return [pickerArray10 objectAtIndex:row];
    }else if (variabla == 11) {
        return [pickerArray11 objectAtIndex:row];
    }else if (variabla == 12) {
        return [pickerArray12 objectAtIndex:row];}
    else{
        return 0;
    }
}
// if (pickerArray3){
/*if (row == 0) {
 self.quantity.text = @"HI";
 } else if (row == 1) {
 self.quantity.text = @"Bye";
 }
 }else if (!pickerArray4){
 if (row == 0) {
 self.quantity2.text = @"text2";
 }else if (row == 1){
 self.quantity2.text = @"text3";
 }
 }*/

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

    _custNameLabel1.text = _custStringPack;
    _dateLabel1.text = _dateStringPack;
   _farbicLabel1.text = _farbicStringPack;
    _fibreLabel1.text = _fibreStringPack;
    _boundLabel1.text = _boundStringPack;
    _quantityLabel1.text = _quantityStringPack;
    _sizeLabel1.text = _sizeStringPack;
    _ElasticLabel1.text = _ElasticString1;
    _t1.text = _t1StringPack;
    _t2.text = _t2StringPack;
    _t3.text = _t3StringPack;
    _t4.text = _t4StringPack;
    _t5.text = _t5StringPack;
    _t6.text = _t6StringPack;
    _t7.text = _t7StringPack;
    _t8.text = _t8StringPack;
    _t9.text = _t9StringPack;
    _t10.text = _t10StringPack;
    _t11.text = _t11StringPack;
    _t12.text = _t12StringPack;
    _t13.text = _t13StringPack;
    _t14.text = _t14StringPack;
    _t15.text = _t15StringPack;
    _t16.text = _t16StringPack;
    _t17.text = _t17StringPack;
    _t18.text = _t18StringPack;
    _t19.text = _t19StringPack;
    _t20.text = _t20StringPack;
    _t21.text = _t21StringPack;
    _t22.text = _t22StringPack;
    _t23.text = _t23StringPack;
    _t24.text = _t24StringPack;
    _t25.text = _t25StringPack;
    _t26.text = _t26StringPack;
    _t27.text = _t27StringPack;
    _t28.text = _t28StringPack;
    _t29.text = _t29StringPack;
    _t30.text = _t30StringPack;
    _A1.text =  _A1StringPack;
    _A2.text = _A2StringPack;
    _A3.text = _A3StringPack;
    _A4.text = _A4StringPack;
    _A5.text = _A5StringPack;
    _ALL.text = _ALLStringPack;
    _MIS.text = _MISStringPack;

    //scrollView
    /*self.imageView.frame = CGRectMake(0,0,768,1600);
     self.imageView.userInteractionEnabled = YES;
     [self.scrollView addSubview:self.imageView];
     self.scrollView.contentSize = CGSizeMake(768, 1600);
     self.scrollView.frame = self.view.bounds;*/
    //[self.view addSubview:pickerView];
    //Delgate
    
    [pickerView setHidden:YES];
    pickerArray1 = [[NSMutableArray alloc] initWithObjects:
                    @"Test", @"Test1", @"Test2", nil];
    //Fabric
    //7
    pickerArray2 = [[NSMutableArray alloc] initWithObjects:
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
    //Fibre
    //2
    pickerArray3 = [[NSMutableArray alloc] initWithObjects:
                    @"A6AM1 1,5d51mm A/F Amicor",
                    @"A6AM3 1,5d32mm Amicor",
                    @"A6AM351 1,5d 51mm Amicor",
                    @"A6AM364 1,5d 64mm Amicor",
                    @"A6C10 3d 32mm HO CONJ SLIK Fibre",
                    @"A6C11 3d 32mm HO SILIC/CON Fibre",
                    @"A6C12 2d 22mm HOL CON/SILK Fibre",
                    @"A6C12A 3d 28mm HO CONJ SLIC Fibre",
                    @"A6C7 7d 64mm HOLL/CON SIL Fibre",
                    @"A6C7A 7d 32mm HOLL/CON SIL Fibre",
                    @"A6C7X 7d 64mm HOLL/CON SIL Fibre",
                    @"A6C9 7d 32mm HOLL/CON OIL Fibre",
                    @"A6C9A 7d 64mm HO CONJ SLIC Fibre",
                    @"A6C9B 7d 32mm HO CONJ SLIC Fibre",
                    @"A6C9C 7d 32mm HO CONJ SLIC Fibre",
                    @"A6C9D 7d 32mm HOLL/CON OIL Fibre",
                    @"A6C9X 7d 32mm HOLL/CON OIL Fibre",
                    @"A6CASH1 CASHMERE",
                    @"A6FIBRENO1 0.7d 38MM SEMI D SIL Fibre",
                    @"A6FIBRENO2 0.7d 51MM SEMI D SIL Fibre",
                    @"A6FIBRENO2A 0.9d SILICONISED Fibre",
                    @"A6FIBRENO2B 0.9d SILICONISED Fibre",
                    @"A6FIBRENO2X 1.2d 51MM SEMI D SIL Fibre",
                    @"A6FIBRENO4 3 denier 64mm HSC Fibre",
                    @"A6FIBRENO4A 4 denier 64mm QDFILL Fibre",
                    @"A6FIBRENO4B 4 denier 64mm HSC Fibre",
                    @"A6FIBRENO4X 3 denier 64mm HSC Fibre",
                    @"A6FIBRENO4Y 0,7d 38mm SLICK Fibre",
                    @"A6FIBRENO7 0,7d 22mm MICRO OIL Fibre",
                    @"A6FIBRENO7X 0,7d 38mm SLICK Fibre",
                    @"A6HEALTHGUARD Healthguard spray Other",
                    @"A6HG1 HEALTH GUARD",
                    @"A6LYBLEND2S BLENDED A528S/C3WD Other",
                    @"A6LYOPCM LYOCELL PHASE CHANGE Fibre",
                    @"A6MOD1 BIRLA MODAL",
                    @"A6MULBSILK TUSSAH SILK",
                    @"A6POLYPROP6D 6D 60 MM PERMAFRE Other",
                    @"A6SILK9767 MULBERRY SILK",
                    @"A6TUSSSILK TUSSAH SILK", nil];
    
    //Bound, Overlocked
    //3
    pickerArray4 = [[NSMutableArray alloc] initWithObjects: @"Yes", @"No",nil];
    
    //Sash Label
    //4
    pickerArray5 = [[NSMutableArray alloc] initWithObjects:@"Wired Bag", @"Plain Bag", @"Bail Bag", @"Retail Box", @"Pallet",nil];
    
    
    //How to be packed
    //5
    pickerArray6 = [[NSMutableArray alloc] initWithObjects:@"Yes", @"No", nil];
    
    //need an inner bag?
    //6
    pickerArray7 = [[NSMutableArray alloc] initWithObjects:@"Yes", @"No", nil];
    
    //Outer carton?
    //8
    pickerArray8 = [[NSMutableArray alloc] initWithObjects:@"Yes", @"No", nil];
    
    //Delivery to customer
    //9
    pickerArray9 = [[NSMutableArray alloc] initWithObjects:@"Direct To Customer", @"Customer Pick Up", @"Direct To Warehouse", nil];
    
    
    //Pallet box?
    //10
    pickerArray10 = [[NSMutableArray alloc] initWithObjects: @"Yes", @"No", nil];
    
    //From warehouse to customer delivery
    //11
    pickerArray11 = [[NSMutableArray alloc] initWithObjects:@"Container Loads", @"Pallets", @"Packs", @"Customer Pick Up", @"Direct Despatch", nil];
    //
    //
    pickerArray12 = [[NSMutableArray alloc] initWithObjects:@"4.5 S 220 Fabric",
                     @"4.5 D 220 Fabric",
                     @"4.5 K 245 Fabric",
                     @"4.5 X 245 Fabric",
                     @"9.0 S 220 Fabric",
                     @"9.0 D 220 Fabric",
                     @"9.0 K 245 Fabric",
                     @"9.0 X 245 Fabric",
                     @"10.5 S 220 Fabric",
                     @"10.5 D 220 Fabric",
                     @"10.5 K 245 Fabric",
                     @"10.5 X 245 Fabric",
                     @"13.5 S 220 Fabric",
                     @"13.5 D 220 Fabric",
                     @"13.5 K 245 Fabric",
                     @"13.5 X 245 Fabric",
                     @"15 S 220 Fabric",
                     @"15 D 220 Fabric",
                     @"15 K 245 Fabric",
                     @"15 X 245 Fabric",
                     @"13.5 ALL Seasons S 220 Fabric * 2",
                     @"13.5 ALL Seasons D 220 Fabric * 2",
                     @"13.5 ALL Seasons K 245 Fabric * 2",
                     @"13.5 ALL Seasons X 245 Fabric * 2",
                     @"15 ALL Seasons S 220 Fabric * 2",
                     @"15 ALL Seasons D 220 Fabric * 2",
                     @"15 ALL Seasons K 245 Fabric * 2",
                     @"15 ALL Seasons X 245 Fabric * 2", nil];
    
    //if (pickerArray2)
    //if (pow == 0) {self.quantity.text = @"test";}
    
    
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backgroundTap:)]];}



-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString *text = [self pickerView:pickerView titleForRow:row forComponent:component];
    UITextField *current = nil;
    if (variabla == 1) current = self.textField1;
    else if (variabla == 2) current = self.textField2;
    else if (variabla == 3) current = self.textField3;
    else if (variabla == 4) current = self.textField4;
    else if (variabla == 5) current = self.textField5;
    else if (variabla == 6) current = self.textField6;
    else if (variabla == 7) current = self.textField7;
    else if (variabla == 8) current = self.textField8;
    else if (variabla == 9) current = self.textField9;
    else if (variabla == 10) current = self.textField10;
    else if (variabla == 11) current = self.textField11;
    else if (variabla == 12) current = self.textField12;
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
    
    logisticsMatress *LMVC = [segue
                            destinationViewController];
    LMVC.custStringLog = _custNameLabel1.text;
    LMVC.dateStringLog = _dateLabel1.text;
    LMVC.farbicStringLog = _farbicLabel1.text;
    LMVC.fibreStringLog = _fibreLabel1.text;
    LMVC.boundStringLog = _boundLabel1.text;
    LMVC.quantityStringLog = _quantityLabel1.text;
    LMVC.sizeStringLog = _sizeLabel1.text;
    LMVC.sasshStringLog = textField6.text;
    LMVC.packedStringLog = textField5.text;
    LMVC.innaStringLog = textField7.text;
    LMVC.outerStringLog = textField8.text;
    LMVC.palletStringLog = textField10.text;
    LMVC.ElasticStringLog = _ElasticLabel1.text;
    LMVC.t1StringLog =_t1.text;
    LMVC.t2StringLog=_t2.text;
    LMVC.t3StringLog=_t3.text;
    LMVC.t4StringLog=_t4.text;
    LMVC.t5StringLog=_t5.text;
    LMVC.t6StringLog=_t6.text;
    LMVC.t7StringLog=_t7.text;
    LMVC.t8StringLog=_t8.text;
    LMVC.t9StringLog=_t9.text;
    LMVC.t10StringLog=_t10.text;
    LMVC.t11StringLog=_t11.text;
    LMVC.t12StringLog=_t12.text;
    LMVC.t13StringLog=_t13.text;
    LMVC.t14StringLog=_t14.text;
    LMVC.t15StringLog=_t15.text;
    LMVC.t16StringLog=_t16.text;
    LMVC.t17StringLog=_t17.text;
    LMVC.t18StringLog=_t18.text;
    LMVC.t19StringLog=_t19.text;
    LMVC.t20StringLog=_t20.text;
    LMVC.t21StringLog=_t21.text;
    LMVC.t22StringLog=_t22.text;
    LMVC.t23StringLog=_t23.text;
    LMVC.t24StringLog=_t24.text;
    LMVC.t25StringLog=_t25.text;
    LMVC.t26StringLog=_t26.text;
    LMVC.t27StringLog=_t27.text;
    LMVC.t28StringLog=_t28.text;
    LMVC.t29StringLog=_t29.text;
    LMVC.t30StringLog=_t30.text;
    LMVC.A1StringLog=_A1.text;
    LMVC.A2StringLog=_A2.text;
    LMVC.A3StringLog=_A3.text;
    LMVC.A4StringLog=_A4.text;
    LMVC.A5StringLog=_A5.text;
    LMVC.ALLStringLog=_ALL.text;
    LMVC.MISStringLog=_MIS.text;
}

@end