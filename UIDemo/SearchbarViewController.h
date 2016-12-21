//
//  SearchbarViewController.h
//  UIDemo
//
//  Created by student14 on 19/10/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchbarViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UITableView *table;
@property(nonatomic,retain)NSMutableArray *array,*searcharray;
@property (weak, nonatomic) IBOutlet UISearchBar *searchbar;
@property BOOL *isFiltered;

@end
