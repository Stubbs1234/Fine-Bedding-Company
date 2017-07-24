//
//  packingPillows.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import "packingPillows.h"

@interface packingPillows ()

@end

@implementation packingPillows
int variabla;

//systhesize all textfileds, textboxes, button.
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
@synthesize textField13;
@synthesize quantityField;
@synthesize custField;
@synthesize dateField;
@synthesize weekField;
@synthesize quantity;
@synthesize quantity2;
@synthesize view1;


//PickerView

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
        variabla = 12;
    }else if (textField13.editing == YES) {
        [textField13 resignFirstResponder];
        [pickerView setHidden:NO];
        variabla = 13;
    }
    
    
    
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
    }else if (variabla == 13) {
        return [pickerArray13 count];
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
        return [pickerArray12 objectAtIndex:row];
    }else if (variabla == 13) {
        return [pickerArray13 objectAtIndex:row];
    }
    else{
        return 0;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //border is added around the outside
    [[view1 layer] setBorderColor:[UIColor blackColor].CGColor];
    [[view1 layer] setBorderWidth:2.0f];
    
    //Puts a date in auto for the copyright label
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    [_copyright setText:[NSString stringWithFormat:@"© Trendsetter Home Furnishings Ltd. All rights reserved %@", dateString]];

    //Gets the data from the last page
    _custNameLabel1.text = _custStringPack;
    _dateLabel1.text = _dateStringPack;
    _ticksLabel1.text = _ticksStringPack;
    _fibreLabel1.text = _fibreStringPack;
    _boundLabel1.text = _boundStringPack;
    _quantityLabel1.text = _quantityStringPack;
    _typeLabel1.text = _typeStringPack;
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

    
    
    
    
    //Delgate
    [pickerView setHidden:YES];
    pickerArray1 = [[NSMutableArray alloc] initWithObjects:
                    @"Test", @"Test1", @"Test2", nil];
    //Ticks
    //7
    pickerArray2 = [[NSMutableArray alloc] initWithObjects:
                    @"F2PC2919CAMPASQ Ticks",
                    @"F2PC2919SUCK Ticks",
                    @"F2PC2919EMB Ticks",
                    @"F2PC291990PLF Ticks",
                    @"F2PCJLCP Ticks",
                    @"F2PC2919PEACHTN Ticks",
                    @"F2PCFBRN Ticks",
                    @"F2PC2919CAM Ticks",
                    @"F2PC2919JLMM Ticks",
                    @"F2PC2919THF2FR2 Ticks",
                    @"F2PC6565THF2PW2 Ticks",
                    @"F2PCPERCALEFR Ticks",
                    @"F2PC2919FBMM Ticks",
                    @"F2PC2919THF2FR Ticks",
                    @"F2PCFBGDM Ticks",
                    @"F2PC3619THF2PW2 Ticks",
                    @"F2PC2919PERTN Ticks",
                    @"F2PC57X35PER Ticks",
                    @"F2PC2919DRFR2 Ticks",
                    @"F2PC2919BUB Ticks",
                    @"F2PCDELTAM3 Ticks",
                    @"F2PC6565PEACHTN Ticks",
                    @"F2PC2919PEACH56 Ticks",
                    @"F2PC2919OSQFR2 Ticks",
                    @"F2PC3619OSQPW2 Ticks",
                    @"F2PC2919CAMPAAM Ticks",
                    @"F2PC2919SQUARE Ticks",
                    @"F2PC5080CAM Ticks",
                    @"F2PC5080PEACHTN Ticks",
                    @"F2PC2919PEACHB Ticks",
                    @"F2PC67X41BOX Ticks",
                    @"F2PC2919CAM3 Ticks",
                    @"F2PC656556P Ticks",
                    @"F2PC2919TWILLPW Ticks",
                    @"F2PC57X35PEACH Ticks",
                    @"F2PC2919CAMPW Ticks",
                    @"F2PC67X41BUB Ticks",
                    @"F2PC6565CAMSQFR2 Ticks",
                    @"F2PC3619CAMSQFR2 Ticks",
                    @"F2PC2919FSD Ticks",
                    @"F2PC3040STRIPE Ticks",
                    @"F2PC5090DIAFR Ticks",
                    @"F2PC6565CAM Ticks",
                    @"F2PC2919ETP Ticks",
                    @"F2PC2919QW Ticks",
                    @"F2PC5070SUCK Ticks",
                    @"F2PC8080CAM Ticks",
                    @"F2PC66X46VELW Ticks",
                    @"F2PC291988TN Ticks",
                    @"F2PC2919HER Ticks",
                    @"F2PC62X4256P Ticks",
                    @"F2PC60X36BOX Ticks",
                    @"F2PCXLARGE Ticks",
                    @"F2PC57X3568P Ticks",
                    @"F2PCNXVELW Ticks",
                    @"F2PC60X73VEL Ticks",
                    @"F2PC2919THF2LF Ticks",
                    @"F2PCNECKMK2 Ticks",
                    @"F2PC3619CAM Ticks",
                    @"F2PC291976P Ticks",
                    @"F2PCDELTAWHB Ticks",
                    @"F2PC2919VEL Ticks",
                    @"F2PC5070BUB Ticks",
                    @"F2PC5060DIA Ticks",
                    @"F2PC5070OSQ Ticks",
                    @"F2PC2919SQFR Ticks",
                    @"F2PC6565BUB Ticks",
                    @"F2PC29X1956P Ticks",
                    @"F2PC6565CAMFR Ticks",
                    @"F2PC5080CAM3MM Ticks",
                    @"F2PC6080THF2LF Ticks",
                    @"F2PC6242PEACH Ticks",
                    @"F2PC291945P Ticks",
                    @"F2PC3619CAMPASQFR Ticks",
                    @"F2PC6565PERTN Ticks",
                    @"F2PC2919OSQFR Ticks",
                    @"F2PC2919DRPKFR2 Ticks",
                    @"F2PC2919DIA Ticks",
                    @"F2PC2919PER52 Ticks",
                    @"F2PC6565EMB Ticks",
                    @"F2PC6565PEACHB Ticks",
                    @"F2PC6565OSQ Ticks",
                    @"F2PC2919THF2PW2 Ticks",
                    @"F2PC656590PLF Ticks",
                    @"F2PC6565CAMPASQFR Ticks",
                    @"F2PCNECKWH Ticks",
                    @"F2PC2919WS	Ticks",
                    @"F2PC5070THF2QLT Ticks",
                    @"F2PC2334CAM Ticks",
                    @"F2PC2334CAMFR Ticks",
                    @"F2PC28X1756P Ticks",
                    @"F2PC291975PLF Ticks",
                    @"F2PC291980PLF Ticks",
                    @"F2PC291985PLF Ticks",
                    @"F2PC2919CAMPASQFR2 Ticks",
                    @"F2PC2919CAMPASQLF Ticks",
                    @"F2PC2919DIAPW Ticks",
                    @"F2PC2919DRLF Ticks",
                    @"F2PC2919DRLFPK Ticks",
                    @"F2PC2919OSQLF Ticks",
                    @"F2PC2919OSQPW2	Ticks",
                    @"F2PC2919PEACH Ticks",
                    @"F2PC2919SHELL Ticks",
                    @"F2PC2919SQUARE2 Ticks",
                    @"F2PC2919STRIPE2 Ticks",
                    @"F2PC2919STRIPELF Ticks",
                    @"F2PC2919THF2 Ticks",
                    @"F2PC2919THF2PW Ticks",
                    @"F2PC2929PEACHB Ticks",
                    @"F2PC361985PLF Ticks",
                    @"F2PC361990PLF Ticks",
                    @"F2PC3619CAMPASQFR2 Ticks",
                    @"F2PC3619CAMPASQLF Ticks",
                    @"F2PC6360CAM Ticks",
                    @"F2PC656585PLF Ticks",
                    @"F2PC6565CAMPASQFR2 Ticks",
                    @"F2PC6565CAMPASQLF Ticks",
                    @"F2PC6565DIA Ticks",
                    @"F2PC6565SUCK Ticks",
                    @"F2PC66X46VEL Ticks",
                    @"F2PC67X41HER Ticks",
                    @"F2PC8080CAMFR Ticks",
                    @"F2PCMINIFBPC Ticks",
                    @"F2PCNXVEL Ticks",
                    @"F2PC6565CE Ticks",
                    @"F2PC6080THF2FR Ticks",
                    @"F2PC2919CAMSQFR2 Ticks",
                    @"F2PC6565THF2QLT Ticks", nil];
    //Fibre
    //2
    pickerArray3 = [[NSMutableArray alloc] initWithObjects:
                    @"A6AM1 Amicor",
                    @"A6AM3 Amicor",
                    @"A6AM351 Amicor",
                    @"A6AM364 Amicor",
                    @"A6C10 Fibre",
                    @"A6C11 Fibre",
                    @"A6C12 Fibre",
                    @"A6C12A Fibre",
                    @"A6C7 Fibre",
                    @"A6C7A Fibre",
                    @"A6C7X Fibre",
                    @"A6C9 Fibre",
                    @"A6C9A Fibre",
                    @"A6C9B Fibre",
                    @"A6C9C Fibre",
                    @"A6C9D Fibre",
                    @"A6C9X Fibre",
                    @"A6CASH1 Cashmere",
                    @"A6FIBRENO1 Fibre",
                    @"A6FIBRENO2 Fibre",
                    @"A6FIBRENO2A Fibre",
                    @"A6FIBRENO2B Fibre",
                    @"A6FIBRENO2X Fibre",
                    @"A6FIBRENO4 Fibre",
                    @"A6FIBRENO4A Fibre",
                    @"A6FIBRENO4B Fibre",
                    @"A6FIBRENO4X Fibre",
                    @"A6FIBRENO4Y Fibre",
                    @"A6FIBRENO7 Fibre",
                    @"A6FIBRENO7X Fibre",
                    @"A6HEALTHGUARD Other",
                    @"A6HG1 H/GUARD",
                    @"A6LYBLEND2S Other",
                    @"A6LYOPCM Fibre",
                    @"A6MOD1 Modal",
                    @"A6MULBSILK Silk",
                    @"A6POLYPROP6D Other",
                    @"A6SILK9767 Silk",
                    @"A6TUSSSILK Silk", nil];
    
    //Bound, Overlocked
    //3
    pickerArray4 = [[NSMutableArray alloc] initWithObjects: @"Bound", @"Overlocked",@"Sonic Seam", nil];
    
    //Sash Label
    //4
    pickerArray5 = [[NSMutableArray alloc] initWithObjects:@"Yes", @"No",nil];
    
    
    //How to be packed
    //5
    pickerArray6 = [[NSMutableArray alloc] initWithObjects:@"Wired Bag", @"Plain Bag", @"Bail Bag", @"Retail Box", @"Pallet", nil];
    
    //need an inner bag?
    //6
    pickerArray7 = [[NSMutableArray alloc] initWithObjects:@"Yes", @"No", nil];
    
    //Outer carton?
    //8
    pickerArray8 = [[NSMutableArray alloc] initWithObjects:@"Yes", @"No", nil];
    
    //Pallet box?
    //9
    pickerArray9 = [[NSMutableArray alloc] initWithObjects:@"Direct To Customer", @"Customer Pick Up", @"Direct To Warehouse", nil];
    
    //Delivery to customer:
    //10
    pickerArray10 = [[NSMutableArray alloc] initWithObjects: @"Yes", @"No", nil];
    //From warehouse to customer delivery
    //11
    pickerArray11 = [[NSMutableArray alloc] initWithObjects:@"Container Loads", @"Pallets", @"Packs", @"Customer Pick Up", @"Direct Despatch", nil];
    
    //Pillow Type
    pickerArray12 = [[NSMutableArray alloc] initWithObjects:@"Cluster",
                     @"Microfibre",
                     @"Delta",
                     @"Foam", nil];
    pickerArray13 = [[NSMutableArray alloc] initWithObjects:@"Pair", @"Single", nil];
    //if (pickerArray2)
    //if (pow == 0) {self.quantity.text = @"test";}
    
    
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backgroundTap:)]];
}

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
    else if (variabla == 13) current = self.textField13;
    current.text = text;
    
}

//Close PickerView

-(void)backgroundTap:(UITapGestureRecognizer *)tapGR{
    self.pickerView.hidden = YES;
    // And maybe..
    variabla = 0;
}

//Shares the data to the next page
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 
 logisticsPillows *LPVC = [segue
                           destinationViewController];
 
     LPVC.custStringLog = _custNameLabel1.text;
     LPVC.dateStringLog = _dateLabel1.text;
     LPVC.ticksStringLog = _ticksLabel1.text;
     LPVC.fibreStringLog = _fibreLabel1.text;
     LPVC.boundStringLog = _boundLabel1.text;
     LPVC.quantityStringLog = _quantityLabel1.text;
     LPVC.typeStringLog = _typeLabel1.text;
     LPVC.sasshStringLog = textField5.text;
     LPVC.innaStringLog = textField6.text;
     LPVC.packedStringLog = textField7.text;
     LPVC.outerStringLog = textField8.text;
     LPVC.palletStringLog = textField10.text;
     LPVC.t1StringLog =_t1.text;
     LPVC.t2StringLog=_t2.text;
     LPVC.t3StringLog=_t3.text;
     LPVC.t4StringLog=_t4.text;
     LPVC.t5StringLog=_t5.text;
     LPVC.t6StringLog=_t6.text;
     LPVC.t7StringLog=_t7.text;
     LPVC.t8StringLog=_t8.text;
     LPVC.t9StringLog=_t9.text;
     LPVC.t10StringLog=_t10.text;
     LPVC.t11StringLog=_t11.text;
     LPVC.t12StringLog=_t12.text;
     LPVC.t13StringLog=_t13.text;
     LPVC.t14StringLog=_t14.text;
     LPVC.t15StringLog=_t15.text;
     LPVC.t16StringLog=_t16.text;
     LPVC.t17StringLog=_t17.text;
     LPVC.t18StringLog=_t18.text;
     LPVC.t19StringLog=_t19.text;
     LPVC.t20StringLog=_t20.text;
     LPVC.t21StringLog=_t21.text;
     LPVC.t22StringLog=_t22.text;
     LPVC.t23StringLog=_t23.text;
     LPVC.t24StringLog=_t24.text;
     LPVC.t25StringLog=_t25.text;
     LPVC.t26StringLog=_t26.text;
     LPVC.t27StringLog=_t27.text;
     LPVC.t28StringLog=_t28.text;
     LPVC.t29StringLog=_t29.text;
     LPVC.t30StringLog=_t30.text;
     LPVC.A1StringLog=_A1.text;
     LPVC.A2StringLog=_A2.text;
     LPVC.A3StringLog=_A3.text;
     LPVC.A4StringLog=_A4.text;
     LPVC.A5StringLog=_A5.text;
     LPVC.ALLStringLog=_ALL.text;
     LPVC.MISStringLog=_MIS.text;
 
 }


//Close Keyboard

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];}


@end
