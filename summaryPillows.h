//
//  summaryPillows.h
//  Trendsetter Enquiries
//
//  Created by Alex Stubbs on 30/10/2014.
//  Copyright (c) 2014 Trendsetter. All rights reserved.
//
#import <MessageUI/MessageUI.h>
#import <UIKit/UIKit.h>
#import <ParseUI/ParseUI.h>
#import <Parse/Parse.h>
#import <QuartzCore/QuartzCore.h>

@interface summaryPillows : UIViewController<MFMailComposeViewControllerDelegate> 
    
    
-(IBAction)save:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *copyright;
    @property (strong, nonatomic) IBOutlet UIScrollView *scroll;
    @property (strong, nonatomic) IBOutlet UIView *scrollView;
    
    @property (strong, nonatomic) IBOutlet UILabel *custNameLabel4;
    @property (strong, nonatomic) IBOutlet UILabel *dateLabel4;
    @property (strong, nonatomic) IBOutlet UILabel *ticksLabel4;
    @property (strong, nonatomic) IBOutlet UILabel *fibreLabel4;
    @property (strong, nonatomic) IBOutlet UILabel *boundLabel4;
    @property (strong, nonatomic) IBOutlet UILabel *quantityLabel4;
    @property (strong, nonatomic) IBOutlet UILabel *typeLabel4;
    @property (strong, nonatomic) IBOutlet UILabel *sasshlabel3;
    @property (strong, nonatomic) IBOutlet UILabel *innaLabel3;
    @property (strong, nonatomic) IBOutlet UILabel *packedLabel3;
    @property (strong, nonatomic) IBOutlet UILabel *outerLabel3;
    @property (strong, nonatomic) IBOutlet UILabel *palletLabel3;
    @property (strong, nonatomic) IBOutlet UILabel *weeksLabel2;
    @property (strong, nonatomic) IBOutlet UILabel *devileryLabel2;
    @property (strong, nonatomic) IBOutlet UILabel *customerLabel2;
    @property (strong, nonatomic) IBOutlet UILabel *DateLabel1;
    @property (strong, nonatomic) IBOutlet UITextView *textviewtext;
    @property (strong, nonatomic) IBOutlet UILabel *requested;
    @property (strong, nonatomic) NSString *custStringF;
    @property (strong, nonatomic) NSString *dateStringF;
    @property (strong, nonatomic) NSString *ticksStringF;
    @property (strong, nonatomic) NSString *fibreStringF;
    @property (strong, nonatomic) NSString *boundStringF;
    @property (strong, nonatomic) NSString *quantityStringF;
    @property (strong, nonatomic) NSString *typeStringF;
    @property (strong, nonatomic) NSString *sasshStringF;
    @property (strong, nonatomic) NSString *innaStringF;
    @property (strong, nonatomic) NSString *packedStringF;
    @property (strong, nonatomic) NSString *outerStringF;
    @property (strong, nonatomic) NSString *palletStringF;
    @property (strong, nonatomic) NSString *weeksStringF;
    @property (strong, nonatomic) NSString *devileryStringF;
    @property (strong, nonatomic) NSString *customerStringF;
    @property (strong, nonatomic) NSString *textviewString;
    @property (strong, nonatomic) NSString *requestedString;
    @property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) NSString *t1StringF;
@property (strong, nonatomic) NSString *t2StringF;
@property (strong, nonatomic) NSString *t3StringF;
@property (strong, nonatomic) NSString *t4StringF;
@property (strong, nonatomic) NSString *t5StringF;
@property (strong, nonatomic) NSString *t6StringF;
@property (strong, nonatomic) NSString *t7StringF;
@property (strong, nonatomic) NSString *t8StringF;
@property (strong, nonatomic) NSString *t9StringF;
@property (strong, nonatomic) NSString *t10StringF;
@property (strong, nonatomic) NSString *t11StringF;
@property (strong, nonatomic) NSString *t12StringF;
@property (strong, nonatomic) NSString *t13StringF;
@property (strong, nonatomic) NSString *t14StringF;
@property (strong, nonatomic) NSString *t15StringF;
@property (strong, nonatomic) NSString *t16StringF;
@property (strong, nonatomic) NSString *t17StringF;
@property (strong, nonatomic) NSString *t18StringF;
@property (strong, nonatomic) NSString *t19StringF;
@property (strong, nonatomic) NSString *t20StringF;
@property (strong, nonatomic) NSString *t21StringF;
@property (strong, nonatomic) NSString *t22StringF;
@property (strong, nonatomic) NSString *t23StringF;
@property (strong, nonatomic) NSString *t24StringF;
@property (strong, nonatomic) NSString *t25StringF;
@property (strong, nonatomic) NSString *t26StringF;
@property (strong, nonatomic) NSString *t27StringF;
@property (strong, nonatomic) NSString *t28StringF;
@property (strong, nonatomic) NSString *t29StringF;
@property (strong, nonatomic) NSString *t30StringF;
@property (strong, nonatomic) NSString *A1StringF;
@property (strong, nonatomic) NSString *A2StringF;
@property (strong, nonatomic) NSString *A3StringF;
@property (strong, nonatomic) NSString *A4StringF;
@property (strong, nonatomic) NSString *A5StringF;
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
@property (strong, nonatomic) NSString *ALLStringF;
@property (strong, nonatomic) NSString *MISStringF;
@property(nonatomic,retain) IBOutlet UILabel *ALL;
@property(nonatomic,retain) IBOutlet UILabel *MIS;
@property (nonatomic, retain) IBOutlet NSString *resquestedby;
@property (strong, nonatomic) IBOutlet UILabel *resquestby;
@end
