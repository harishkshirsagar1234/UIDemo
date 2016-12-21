//
//  SearchbarViewController.m
//  UIDemo
//
//  Created by student14 on 19/10/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "SearchbarViewController.h"

@interface SearchbarViewController ()

@end

@implementation SearchbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _table.delegate=self;
    _table.dataSource=self;
    _array=[[NSMutableArray alloc]initWithObjects:@"brown",@"white",@"orange",@"green",@"blue",@"red", nil];
    //[self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
   // [_table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    _searchbar.delegate=self;
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   // return  _array.count;
    int rowCount;
    if(self.isFiltered)
        rowCount = _searcharray.count;
    else
        rowCount = _array.count;
    
    return rowCount;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
////    //cell.textLabel.text=[_array objectAtIndex:indexPath.row];
//    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];

    if(_isFiltered)
    cell.textLabel.text = [_searcharray objectAtIndex:indexPath.row];
    else
        cell.textLabel.text = [_array objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if(searchText.length == 0)
    {
        _isFiltered = false;
    }
    else
    {
        _isFiltered = TRUE;
        _searcharray = [[NSMutableArray alloc] init];
        
        for (NSString *color in _array)
        {
            NSRange nameRange = [color rangeOfString:searchText options:NSCaseInsensitiveSearch];
            NSRange descriptionRange = [color.description rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if(nameRange.location != NSNotFound || descriptionRange.location != NSNotFound)
            {
                [_searcharray addObject:color];
            }
        }
    }
    
    [self.table reloadData];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
