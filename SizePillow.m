//
//  SizePillow.m
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 11/01/2015.
//  Copyright (c) 2015 Trendsetter. All rights reserved.
//

#import "SizePillow.h"

@implementation SizePillow
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
    
    //Puts a border around the outside
    [[view1 layer] setBorderColor:[UIColor blackColor].CGColor];
    [[view1 layer] setBorderWidth:2.0f];
    
    //hides the boxes until the check box is tap on
    self.quantityTogs.hidden = YES;
    self.togs.hidden = YES;
    
    //Gets data from the last page
    _custlabel.text = _custStringSize;
    _datelabel.text = _dateStringSize;
    _boundlabel.text = _boundStringSize;
    _fibrelabel.text = _fibreStringSize;
    _typelabel.text = _typeStringSize;
    
    //this here for quick updating
    mis.text =@"No";
    
    //Puts a date in for the copyright auto
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    [_copyright setText:[NSString stringWithFormat:@"© Trendsetter Home Furnishings Ltd. All rights reserved %@", dateString]];

    
    //Delgate
    
    [pickerView setHidden:YES];
    //Fabric
    //1
    pickerArray1 = [[NSMutableArray alloc] initWithObjects:
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

//Shares the data for the next page
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    packingPillows *PPVC = [segue
                          destinationViewController];
    
    
    PPVC.ticksStringPack = textField1.text;
    PPVC.custStringPack = _custlabel.text;
    PPVC.dateStringPack = _datelabel.text;
    PPVC.fibreStringPack = _fibrelabel.text;
    PPVC.boundStringPack = _boundlabel.text;
    PPVC.t1StringPack =_t1.text;
    PPVC.t2StringPack=_t2.text;
    PPVC.t3StringPack=_t3.text;
    PPVC.t4StringPack=_t4.text;
    PPVC.t5StringPack=_t5.text;
    PPVC.t6StringPack=_t6.text;
    PPVC.t7StringPack=_t7.text;
    PPVC.t8StringPack=_t8.text;
    PPVC.t9StringPack=_t9.text;
    PPVC.t10StringPack=_t10.text;
    PPVC.t11StringPack=_t11.text;
    PPVC.t12StringPack=_t12.text;
    PPVC.t13StringPack=_t13.text;
    PPVC.t14StringPack=_t14.text;
    PPVC.t15StringPack=_t15.text;
    PPVC.t16StringPack=_t16.text;
    PPVC.t17StringPack=_t17.text;
    PPVC.t18StringPack=_t18.text;
    PPVC.t19StringPack=_t19.text;
    PPVC.t20StringPack=_t20.text;
    PPVC.t21StringPack=_t21.text;
    PPVC.t22StringPack=_t22.text;
    PPVC.t23StringPack=_t23.text;
    PPVC.t24StringPack=_t24.text;
    PPVC.t25StringPack=_t25.text;
    PPVC.t26StringPack=_t26.text;
    PPVC.t27StringPack=_t27.text;
    PPVC.t28StringPack=_t28.text;
    PPVC.t29StringPack=_t29.text;
    PPVC.t30StringPack=_t30.text;
    PPVC.A1StringPack=_A1.text;
    PPVC.A2StringPack=_A2.text;
    PPVC.A3StringPack=_A3.text;
    PPVC.A4StringPack=_A4.text;
    PPVC.A5StringPack=_A5.text;
    PPVC.ALLStringPack=togs.text;
    PPVC.MISStringPack=mis.text;
    PPVC.quantityStringPack=quantityTogs.text;
    PPVC.typeStringPack = _typelabel.text;
}

//Close Keyboard

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Allows the user to open more options
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

