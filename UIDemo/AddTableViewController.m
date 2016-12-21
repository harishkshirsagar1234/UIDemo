//
//  AddTableViewController.m
//  UIDemo
//
//  Created by student14 on 03/10/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "AddTableViewController.h"

@interface AddTableViewController ()

@end

@implementation AddTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor blueColor];
    _table =[[UITableView alloc]initWithFrame:CGRectMake(0, 70, 320, 300) style:UITableViewStylePlain];
    _table.delegate=self;
    _table.dataSource=self;
    [self.view addSubview:_table];
    _result=[[NSMutableArray alloc]init];
    
    _btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame=CGRectMake(100, 400, 100, 50);
    [_btn setTitle:@"Add" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(buttonclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
    
    
    _rc=[[UIRefreshControl alloc]init];
    [_table addSubview:_rc];
    [_rc addTarget:self action:@selector(refresh) forControlEvents:UIControlEventValueChanged];
    
   
}

//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    _bar=[[UISearchBar alloc]initWithFrame:CGRectMake(20, 20, 320, 30)];
//    _bar.delegate=self;
//    //[self.table.tableHeaderView addSubview:_bar];
//    return _bar;
//}

-(void)refresh
{
    [_rc endRefreshing];
    [self.table reloadData];
}

-(void)buttonclick
{
    
    UIAlertView* alert = [[UIAlertView alloc] init];
    [alert setDelegate:self];
    [alert setTitle:@"Enter Text"];
    [alert setMessage:@""];
    [alert addButtonWithTitle:@"Cancel"];
    [alert addButtonWithTitle:@"OK"];
    alert.alertViewStyle=UIAlertViewStylePlainTextInput;
    [alert show];
  // [self.table reloadData];
    
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
  UITextField *textField = [alertView textFieldAtIndex:0];
    NSString *title = textField.text;
    [_result addObject:title];
    //[self.table reloadData];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _result.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text=[_result objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
