//
//  AddTableViewController.h
//  UIDemo
//
//  Created by student14 on 03/10/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate,UISearchBarDelegate>

@property (nonatomic,retain)UITableView *table;
@property (nonatomic,retain)UIButton *btn;
@property (nonatomic,retain)NSMutableArray *result;
@property (nonatomic,retain)UIRefreshControl *rc;
@property (nonatomic,retain)UISearchBar *bar;

@end
