//
//  CalViewController.h
//  UIDemo
//
//  Created by student14 on 30/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalViewController : UIViewController <UITextFieldDelegate, UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,retain)UITextField *firsttext,*secondtext;
@property (nonatomic,retain)UITableView *table;
@property (nonatomic,retain)UIButton *calbtn;
//@property (nonatomic,retain)NSString *str1,*str2;
@property (nonatomic, retain)NSMutableArray *result;

@end
