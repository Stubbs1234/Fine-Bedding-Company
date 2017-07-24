//
//  logisticsMatress.h
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "commentspageMatress.h"

@interface logisticsMatress : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    
    
    
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
@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UILabel *custNameLabel2;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel2;
@property (strong, nonatomic) IBOutlet UILabel *farbicLabel2;
@property (strong, nonatomic) IBOutlet UILabel *fibreLabel2;
@property (strong, nonatomic) IBOutlet UILabel *boundLabel2;
@property (strong, nonatomic) IBOutlet UILabel *quantityLabel2;
@property (strong, nonatomic) IBOutlet UILabel *sizeLabel2;
@property (strong, nonatomic) IBOutlet UILabel *sasshlabel1;
@property (strong, nonatomic) IBOutlet UILabel *innaLabel1;
@property (strong, nonatomic) IBOutlet UILabel *packedLabel1;
@property (strong, nonatomic) IBOutlet UILabel *outerLabel1;
@property (strong, nonatomic) IBOutlet UILabel *palletLabel1;
@property (strong, nonatomic) NSString *custStringLog;
@property (strong, nonatomic) NSString *dateStringLog;
@property (strong, nonatomic) NSString *farbicStringLog;
@property (strong, nonatomic) NSString *fibreStringLog;
@property (strong, nonatomic) NSString *boundStringLog;
@property (strong, nonatomic) NSString *quantityStringLog;
@property (strong, nonatomic) NSString *sizeStringLog;
@property (strong, nonatomic) NSString *sasshStringLog;
@property (strong, nonatomic) NSString *innaStringLog;
@property (strong, nonatomic) NSString *packedStringLog;
@property (strong, nonatomic) NSString *outerStringLog;
@property (strong, nonatomic) NSString *palletStringLog;
@property (strong, nonatomic) NSString *ElasticStringLog;
@property (strong, nonatomic) IBOutlet UILabel *ElasticLabel2;
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
@property (strong, nonatomic) NSString *t1StringLog;
@property (strong, nonatomic) NSString *t2StringLog;
@property (strong, nonatomic) NSString *t3StringLog;
@property (strong, nonatomic) NSString *t4StringLog;
@property (strong, nonatomic) NSString *t5StringLog;
@property (strong, nonatomic) NSString *t6StringLog;
@property (strong, nonatomic) NSString *t7StringLog;
@property (strong, nonatomic) NSString *t8StringLog;
@property (strong, nonatomic) NSString *t9StringLog;
@property (strong, nonatomic) NSString *t10StringLog;
@property (strong, nonatomic) NSString *t11StringLog;
@property (strong, nonatomic) NSString *t12StringLog;
@property (strong, nonatomic) NSString *t13StringLog;
@property (strong, nonatomic) NSString *t14StringLog;
@property (strong, nonatomic) NSString *t15StringLog;
@property (strong, nonatomic) NSString *t16StringLog;
@property (strong, nonatomic) NSString *t17StringLog;
@property (strong, nonatomic) NSString *t18StringLog;
@property (strong, nonatomic) NSString *t19StringLog;
@property (strong, nonatomic) NSString *t20StringLog;
@property (strong, nonatomic) NSString *t21StringLog;
@property (strong, nonatomic) NSString *t22StringLog;
@property (strong, nonatomic) NSString *t23StringLog;
@property (strong, nonatomic) NSString *t24StringLog;
@property (strong, nonatomic) NSString *t25StringLog;
@property (strong, nonatomic) NSString *t26StringLog;
@property (strong, nonatomic) NSString *t27StringLog;
@property (strong, nonatomic) NSString *t28StringLog;
@property (strong, nonatomic) NSString *t29StringLog;
@property (strong, nonatomic) NSString *t30StringLog;
@property (strong, nonatomic) NSString *A1StringLog;
@property (strong, nonatomic) NSString *A2StringLog;
@property (strong, nonatomic) NSString *A3StringLog;
@property (strong, nonatomic) NSString *A4StringLog;
@property (strong, nonatomic) NSString *A5StringLog;
@property (strong, nonatomic) NSString *ALLStringLog;
@property (strong, nonatomic) NSString *MISStringLog;
@property(nonatomic,retain) IBOutlet UILabel *ALL;
@property(nonatomic,retain) IBOutlet UILabel *MIS;

@end
