//
//  TableViewController.h
//  UIDemo
//
//  Created by student14 on 29/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,retain) UITableView *table;
@property (nonatomic,retain) NSArray *cityarray,*colorarray;

@end
