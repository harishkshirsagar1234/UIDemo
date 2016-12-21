//
//  DaeViewController.m
//  UIDemo
//
//  Created by student14 on 29/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "DaeViewController.h"

@interface DaeViewController ()

@end

@implementation DaeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    _datepicker =[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 50, 320, 600)];
    [self.view addSubview:_datepicker];
    [_datepicker addTarget:self action:@selector(dateselected) forControlEvents:UIControlEventValueChanged];
    UIBarButtonItem *lbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(lbtnclick)];
    self.navigationItem.leftBarButtonItem=lbtn;
    

    
}

-(void)lbtnclick
{
 //   DaeViewController *tvc=[[DaeViewController alloc]init];
   // [self.navigationController popToRootViewControllerAnimated:YES];
   // [self.navigationController popViewControllerAnimated:YES];
   // [self.navigationController pushViewController:tvc animated:YES];
    NSArray *arr=[self.navigationController viewControllers];
    [self.navigationController popToViewController:[arr objectAtIndex:2] animated:YES];
}

-(void)dateselected
{
    NSLog(@"\n %@ - %@",_datepicker.date,[_datepicker date]);
    
    NSDateFormatter *format =[[NSDateFormatter alloc]init];
    [format setDateFormat:@"dd-MM-YYYY hh-mm-a"];
    
    NSString *str=[format stringFromDate:[_datepicker date]];
    NSLog(@"\n %@, After date format has changed",str);
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
