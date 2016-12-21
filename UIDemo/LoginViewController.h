//
//  LoginViewController.h
//  UIDemo
//
//  Created by student14 on 20/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,retain) UIView *view1;
@property (nonatomic,retain) UILabel *Usernamelbl,*Passwordlbl;
@property (nonatomic,retain) UITextField *usernametext,*Passwordtext;
@property (nonatomic,retain) UIButton *loginbtn, *Cancelbtn;
@property (nonatomic, retain) UISegmentedControl *segmentview;
@property (nonatomic,retain) UISwitch *switch1;
@property (nonatomic,retain) UISlider *slider;
@property (nonatomic, retain) UIImageView *container;
@property (nonatomic,retain) UIImage *actualimage;

@end
