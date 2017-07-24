//
//  Duvet.h
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 15/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "packingDuvet.h"
#import "SizeDuvet.h"



@interface Duvet : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    
    
    IBOutlet UITextField *textField1;
    IBOutlet UITextField *textField2;
    IBOutlet UITextField *textField3;
    IBOutlet UITextField *textField4;
    IBOutlet UITextField *textField5;
    IBOutlet UITextField *textField6;
    IBOutlet UITextField *textField7;
    IBOutlet UITextField *textField8;
    IBOutlet UITextField *textField9;
    IBOutlet UITextField *textField10;
    NSMutableArray *pickerArray1;
    NSMutableArray *pickerArray2;
    NSMutableArray *pickerArray3;
    NSMutableArray *pickerArray4;
    NSMutableArray *pickerArray5;
    NSMutableArray *pickerArray6;
    NSMutableArray *pickerArray7;
    NSMutableArray *pickerArray8;
    NSMutableArray *pickerArray9;
    NSMutableArray *pickerArray10;
    NSMutableArray *pickerArray11;
    NSMutableArray *pickerArray12;
    UIPickerView *pickerView;
    
}


-(IBAction)backButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *view;
@property(nonatomic,retain) IBOutlet UITextField *custField;
@property(nonatomic,retain) IBOutlet UITextField *dateField;
@property(nonatomic,retain) IBOutlet UITextField *textField1;
@property(nonatomic,retain) IBOutlet UITextField *textField2;
@property(nonatomic,retain) IBOutlet UITextField *textField3;
@property(nonatomic,retain) IBOutlet UITextField *textField4;
@property(nonatomic,retain) IBOutlet UITextField *textField5;
@property(nonatomic,retain) IBOutlet UITextField *textField6;
@property(nonatomic,retain) IBOutlet UITextField *textField7;
@property(nonatomic,retain) IBOutlet UITextField *textField8;
@property(nonatomic,retain) IBOutlet UITextField *textField9;
@property(nonatomic,retain) IBOutlet UITextField *textField10;
@property(nonatomic,retain) IBOutlet UITextField *textField11;
@property(nonatomic,retain) IBOutlet UITextField *textField12;
@property(nonatomic,retain) IBOutlet UIPickerView *pickerView;
@property(strong,nonatomic) IBOutlet UILabel *quantity;
@property(nonatomic,retain) IBOutlet UILabel *quantity2;
@property(strong,nonatomic) IBOutlet UITextField *textField;
@property(nonatomic,retain) IBOutlet UITextField *quantityField;
@property(nonatomic,retain) IBOutlet UITextField *weekField;
@property (strong, nonatomic) IBOutlet UIView *view1;
@property(strong,nonatomic) IBOutlet UILabel *date;
@property (strong, nonatomic) IBOutlet UILabel *quatityFibreLabel;
@property (strong, nonatomic) IBOutlet UILabel *copyright;



@end
