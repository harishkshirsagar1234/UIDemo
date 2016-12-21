//
//  PickerViewController.h
//  UIDemo
//
//  Created by student14 on 27/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>

@property (nonatomic,retain) UIPickerView *picker;
@property (nonatomic,retain) NSMutableArray *cityarray, *colorarray,*imgarray;
@property (nonatomic,retain) UILabel *selectedPickervalue;
@property (nonatomic,retain) NSString *str2;

@end
