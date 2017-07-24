//
//  packingMatress.h
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.

#import <UIKit/UIKit.h>
#import "logisticsMatress.h"

@interface packingMatress : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    
    
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
@property (strong, nonatomic) IBOutlet UILabel *copyright;
@property (strong, nonatomic) IBOutlet UILabel *custNameLabel1;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel1;
@property (strong, nonatomic) IBOutlet UILabel *farbicLabel1;
@property (strong, nonatomic) IBOutlet UILabel *fibreLabel1;
@property (strong, nonatomic) IBOutlet UILabel *boundLabel1;
@property (strong, nonatomic) IBOutlet UILabel *quantityLabel1;
@property (strong, nonatomic) IBOutlet UILabel *sizeLabel1;
@property (strong, nonatomic) IBOutlet UILabel *ElasticLabel1;
@property (strong, nonatomic) NSString *custStringPack;
@property (strong, nonatomic) NSString *dateStringPack;
@property (strong, nonatomic) NSString *farbicStringPack;
@property (strong, nonatomic) NSString *fibreStringPack;
@property (strong, nonatomic) NSString *boundStringPack;
@property (strong, nonatomic) NSString *quantityStringPack;
@property (strong, nonatomic) NSString *sizeStringPack;
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
@property(nonatomic,retain) IBOutlet UILabel *quantity;
@property(nonatomic,retain) IBOutlet UILabel *quantity2;
@property(strong,nonatomic) IBOutlet UITextField *textField;
@property(nonatomic,retain) IBOutlet UITextField *quantityField;
@property(nonatomic,retain) IBOutlet UITextField *weekField;
@property(nonatomic, retain) NSString *ElasticString1;
@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) NSString *MISStringPack;
@property (strong, nonatomic) NSString *ALLStringPack;
@property (strong, nonatomic) NSString *t1StringPack;
@property (strong, nonatomic) NSString *t2StringPack;
@property (strong, nonatomic) NSString *t3StringPack;
@property (strong, nonatomic) NSString *t4StringPack;
@property (strong, nonatomic) NSString *t5StringPack;
@property (strong, nonatomic) NSString *t6StringPack;
@property (strong, nonatomic) NSString *t7StringPack;
@property (strong, nonatomic) NSString *t8StringPack;
@property (strong, nonatomic) NSString *t9StringPack;
@property (strong, nonatomic) NSString *t10StringPack;
@property (strong, nonatomic) NSString *t11StringPack;
@property (strong, nonatomic) NSString *t12StringPack;
@property (strong, nonatomic) NSString *t13StringPack;
@property (strong, nonatomic) NSString *t14StringPack;
@property (strong, nonatomic) NSString *t15StringPack;
@property (strong, nonatomic) NSString *t16StringPack;
@property (strong, nonatomic) NSString *t17StringPack;
@property (strong, nonatomic) NSString *t18StringPack;
@property (strong, nonatomic) NSString *t19StringPack;
@property (strong, nonatomic) NSString *t20StringPack;
@property (strong, nonatomic) NSString *t21StringPack;
@property (strong, nonatomic) NSString *t22StringPack;
@property (strong, nonatomic) NSString *t23StringPack;
@property (strong, nonatomic) NSString *t24StringPack;
@property (strong, nonatomic) NSString *t25StringPack;
@property (strong, nonatomic) NSString *t26StringPack;
@property (strong, nonatomic) NSString *t27StringPack;
@property (strong, nonatomic) NSString *t28StringPack;
@property (strong, nonatomic) NSString *t29StringPack;
@property (strong, nonatomic) NSString *t30StringPack;
@property (strong, nonatomic) NSString *A1StringPack;
@property (strong, nonatomic) NSString *A2StringPack;
@property (strong, nonatomic) NSString *A3StringPack;
@property (strong, nonatomic) NSString *A4StringPack;
@property (strong, nonatomic) NSString *A5StringPack;
@property(nonatomic,retain) IBOutlet UILabel *t1;
@property(nonatomic,retain) IBOutlet UILabel *t2;
@property(nonatomic,retain) IBOutlet UILabel *t3;
@property(nonatomic,retain) IBOutlet UILabel *t4;
@property(nonatomic,retain) IBOutlet UILabel *t5;
@property(nonatomic,retain) IBOutlet UILabel *t6;
@property(nonatomic,retain) IBOutlet UILabel *t7;
@property(nonatomic,retain) IBOutlet UILabel *t8;
@property(nonatomic,retain) IBOutlet UILabel *t9;
@property(nonatomic,retain) IBOutlet UILabel *t10;
@property(nonatomic,retain) IBOutlet UILabel *t11;
@property(nonatomic,retain) IBOutlet UILabel *t12;
@property(nonatomic,retain) IBOutlet UILabel *t13;
@property(nonatomic,retain) IBOutlet UILabel *t14;
@property(nonatomic,retain) IBOutlet UILabel *t15;
@property(nonatomic,retain) IBOutlet UILabel *t16;
@property(nonatomic,retain) IBOutlet UILabel *t17;
@property(nonatomic,retain) IBOutlet UILabel *t18;
@property(nonatomic,retain) IBOutlet UILabel *t19;
@property(nonatomic,retain) IBOutlet UILabel *t20;
@property(nonatomic,retain) IBOutlet UILabel *t21;
@property(nonatomic,retain) IBOutlet UILabel *t22;
@property(nonatomic,retain) IBOutlet UILabel *t23;
@property(nonatomic,retain) IBOutlet UILabel *t24;
@property(nonatomic,retain) IBOutlet UILabel *t25;
@property(nonatomic,retain) IBOutlet UILabel *t26;
@property(nonatomic,retain) IBOutlet UILabel *t27;
@property(nonatomic,retain) IBOutlet UILabel *t28;
@property(nonatomic,retain) IBOutlet UILabel *t29;
@property(nonatomic,retain) IBOutlet UILabel *t30;
@property(nonatomic,retain) IBOutlet UILabel *A1;
@property(nonatomic,retain) IBOutlet UILabel *A2;
@property(nonatomic,retain) IBOutlet UILabel *A3;
@property(nonatomic,retain) IBOutlet UILabel *A4;
@property(nonatomic,retain) IBOutlet UILabel *A5;
@property(nonatomic,retain) IBOutlet UILabel *ALL;
@property(nonatomic,retain) IBOutlet UILabel *MIS;
@end