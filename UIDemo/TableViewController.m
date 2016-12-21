//
//  TableViewController.m
//  UIDemo
//
//  Created by student14 on 29/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "TableViewController.h"
#import "DaeViewController.h"

@interface TableViewController ()

@end


@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _table =[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    _table.delegate=self;
    _table.dataSource=self;
    [self.view addSubview:_table];
    _cityarray = [[NSMutableArray                        alloc]initWithObjects:@"Pune",@"Mumbai",@"Nashik",@"Delhi",@"Kilkata", nil];
    _colorarray = [[NSMutableArray alloc]initWithObjects:@"Blue",@"Red",@"Green",@"Yellow",@"Brown", nil];
    [self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclick)];
    self.navigationItem.rightBarButtonItem=rbtn;
 
    UIBarButtonItem *lbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(lbtnclick)];
    self.navigationItem.leftBarButtonItem=lbtn;
    
    
      
}
-(void)lbtnclick
{
    //DaeViewController *tvc=[[DaeViewController alloc]init];
    [self.navigationController popToRootViewControllerAnimated:YES];
    //[self.navigationController pushViewController:tvc animated:YES];
    //[self.navigationController popToViewController:vc animated:]
}


-(void)rbtnclick
{
     DaeViewController *tvc=[[DaeViewController alloc]init];
    [self.navigationController pushViewController:tvc animated:YES];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section==0)
        return _cityarray.count;
    else
        return _colorarray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
//    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
////    cell.imageView.image=[UIImage imageNamed:@"2"];
//    //cell.textLabel.text=@"Test";
//     cell.detailTextLabel.text=@"Details Text";
    
    NSLog(@"%d - %d ",[indexPath section],[indexPath row]);
   
//    if([indexPath section]==1)
//    {
//        UITableViewCell *cell1=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
//        cell1.imageView.image=[UIImage imageNamed:@"altu"];
//        cell1.textLabel.text=@"Section 2";
//        return cell1;
//    }
    
    if([indexPath section]==0)
    {
   // cell.imageView.image=[UIImage imageNamed:@"fav"];
        cell.textLabel.text=[_cityarray objectAtIndex:indexPath.row];
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
//    cell.detailTextLabel.text=@"Row 2";
    }
    else
    {
        cell.textLabel.text=[_colorarray objectAtIndex:indexPath.row];
        UISwitch *s=[[UISwitch alloc]init];
        cell.accessoryView=s;
    }
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 100;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 150;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section==0)
    {
return @"city array";
    }
    else
    {
        return @"Color Array";
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if(section==0)
        return @"this is end of city array";
        else
            return @"this is end of color array";
}

-(UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"altu"]];
    return i;
}
-(UIView *) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UISegmentedControl *s=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E", nil]];
    return s;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
if(indexPath.section==0)
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:[_cityarray objectAtIndex:indexPath.row] message:@"Selected" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Ok", nil];
       [alert show];
}
else
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:[_cityarray objectAtIndex:indexPath.row] message:@"Selected" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"Ok", nil];
        [alert show];

    UIAlertController *alert2 =[UIAlertController alertControllerWithTitle:@"Test" message:@"test" preferredStyle:UIAlertControllerStyleAlert];
    
}
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
