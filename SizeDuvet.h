//
//  SizeDuvet.h
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 17/12/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "packingDuvet.h"

@interface SizeDuvet : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    
    BOOL checked;
    IBOutlet UITextField *textField1;
    NSMutableArray *pickerArray1;
    UIPickerView *pickerView;
}


@property (strong, nonatomic) IBOutlet UIView *view;
@property (strong, nonatomic) IBOutlet UIView *view1;
@property(nonatomic,retain) IBOutlet UITextField *quantityTogs;
@property(nonatomic,retain) IBOutlet UITextField *textField1;
@property(nonatomic,retain) IBOutlet UITextField *mis;
@property(nonatomic,retain) IBOutlet UIPickerView *pickerView;
@property(nonatomic,retain) IBOutlet UITextField *togs;
@property(nonatomic,retain) IBOutlet UITextField *t1;
@property(nonatomic,retain) IBOutlet UITextField *t2;
@property(nonatomic,retain) IBOutlet UITextField *t3;
@property(nonatomic,retain) IBOutlet UITextField *t4;
@property(nonatomic,retain) IBOutlet UITextField *t5;
@property(nonatomic,retain) IBOutlet UITextField *t6;
@property(nonatomic,retain) IBOutlet UITextField *t7;
@property(nonatomic,retain) IBOutlet UITextField *t8;
@property(nonatomic,retain) IBOutlet UITextField *t9;
@property(nonatomic,retain) IBOutlet UITextField *t10;
@property(nonatomic,retain) IBOutlet UITextField *t11;
@property(nonatomic,retain) IBOutlet UITextField *t12;
@property(nonatomic,retain) IBOutlet UITextField *t13;
@property(nonatomic,retain) IBOutlet UITextField *t14;
@property(nonatomic,retain) IBOutlet UITextField *t15;
@property(nonatomic,retain) IBOutlet UITextField *t16;
@property(nonatomic,retain) IBOutlet UITextField *t17;
@property(nonatomic,retain) IBOutlet UITextField *t18;
@property(nonatomic,retain) IBOutlet UITextField *t19;
@property(nonatomic,retain) IBOutlet UITextField *t20;
@property(nonatomic,retain) IBOutlet UITextField *t21;
@property(nonatomic,retain) IBOutlet UITextField *t22;
@property(nonatomic,retain) IBOutlet UITextField *t23;
@property(nonatomic,retain) IBOutlet UITextField *t24;
@property(nonatomic,retain) IBOutlet UITextField *t25;
@property(nonatomic,retain) IBOutlet UITextField *t26;
@property(nonatomic,retain) IBOutlet UITextField *t27;
@property(nonatomic,retain) IBOutlet UITextField *t28;
@property(nonatomic,retain) IBOutlet UITextField *t29;
@property(nonatomic,retain) IBOutlet UITextField *t30;
@property(nonatomic,retain) IBOutlet UITextField *A1;
@property(nonatomic,retain) IBOutlet UITextField *A2;
@property(nonatomic,retain) IBOutlet UITextField *A3;
@property(nonatomic,retain) IBOutlet UITextField *A4;
@property(nonatomic,retain) IBOutlet UITextField *A5;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton;
@property (strong, nonatomic) IBOutlet UILabel *custlabel;
@property (strong, nonatomic) IBOutlet UILabel *datelabel;
@property (strong, nonatomic) IBOutlet UILabel *fibrelabel;
@property (strong, nonatomic) IBOutlet UILabel *boundlabel;
@property (strong, nonatomic) NSString *custStringSize;
@property (strong, nonatomic) NSString *dateStringSize;
@property (strong, nonatomic) NSString *fibreStringSize;
@property (strong, nonatomic) NSString *boundStringSize;
@property (strong, nonatomic) IBOutlet UILabel *copyright;
- (IBAction)checkButton:(id)sender;
@end