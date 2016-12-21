//
//  CalViewController.m
//  UIDemo
//
//  Created by student14 on 30/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "CalViewController.h"

@interface CalViewController ()

@end

@implementation CalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor redColor];
    
    _firsttext=[[UITextField alloc]initWithFrame:CGRectMake(0, 50, 80, 50)];
    _firsttext.borderStyle=UITextBorderStyleRoundedRect;
    _firsttext.keyboardType=UIKeyboardTypeNumberPad;
    _firsttext.keyboardAppearance=UIKeyboardAppearanceDark;
    _firsttext.returnKeyType=UIReturnKeyNext;
    _firsttext.delegate=self;
    [self.view addSubview:_firsttext];
    
    _secondtext=[[UITextField alloc]initWithFrame:CGRectMake(90, 50, 80, 50)];
    _secondtext.borderStyle=UITextBorderStyleRoundedRect;
    _secondtext.keyboardType=UIKeyboardTypeNumberPad;
    _secondtext.keyboardAppearance=UIKeyboardAppearanceDark;
    _secondtext.returnKeyType=UIReturnKeyNext;
    _secondtext.delegate=self;
    [self.view addSubview:_secondtext];
    
    _calbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _calbtn.frame=CGRectMake(200, 50, 100, 50);
    [_calbtn setTitle:@"Calcualte" forState:UIControlStateNormal];
    [_calbtn addTarget:self action:@selector(buttonclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_calbtn];
    
    _table =[[UITableView alloc]initWithFrame:CGRectMake(0, 110, 320, 320) style:UITableViewStylePlain];
    _table.delegate=self;
    _table.dataSource=self;
    [self.view addSubview:_table];
    _result=[[NSMutableArray alloc]init];
    
}
-(void)buttonclick
{
    [_result removeAllObjects];
    int no1=[_firsttext.text intValue];
    int no2=[_secondtext.text intValue];
    for (int i=1;i<=no2;i++)
    {
        NSString *r=[NSString stringWithFormat:@"%d * %d = %d",no1,i,no1*i];
        [_result addObject:r];
    }
    [self.table reloadData];
    
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
