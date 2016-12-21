//
//  PickerViewController.m
//  UIDemo
//
//  Created by student14 on 27/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "PickerViewController.h"
#import "TableViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
      _picker=[[UIPickerView alloc]initWithFrame:CGRectMake(0, 50, 320, 250)];
    _picker.delegate=self;
    _picker.dataSource=self;
    [self.view addSubview:_picker];
    
    _cityarray = [[NSMutableArray alloc]initWithObjects:@"Pune",@"Mumbai",@"Nashik",@"Delhi",@"Kilkata", nil];
    _colorarray = [[NSMutableArray alloc]initWithObjects:@"Blue",@"Red",@"Green",@"Yellow",@"Brown",@"White", nil];
    _selectedPickervalue =[[UILabel alloc]initWithFrame:CGRectMake(50, 300, 200, 50)];
    //_selectedPickervalue.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:_selectedPickervalue];
    _imgarray=[NSMutableArray arrayWithObjects:@"2",@"altu",@"fav", nil];
    
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclick)];
    self.navigationItem.rightBarButtonItem=rbtn;

 
}

-(void)rbtnclick
{
    TableViewController *tvc=[[TableViewController alloc]init];
    [self.navigationController pushViewController:tvc animated:YES];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //if(component==0)
      //return _cityarray.count;
      //  else
       //    return _colorarray.count;
    return 3;
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    
    
    
    
    UIImageView *img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imgarray objectAtIndex:row]]];
    
    return img;
    
}
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 200;
}

//-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    if(component==0)
//    {
//        return [_cityarray objectAtIndex:row];
////        if(row==0)
////            return @"Pune";
////    else if (row==1)
////        return @"Mumbai";
////        else if(row==2)
////            return @"Bheed";
////        
////    else if (row==3)
////        return @"Solapur";
////        else if(row == 4)
////  return @"Satara";
////    
////        else
////            return @"Nanded";
//    }
//    
//        else
//        {
//            return [_colorarray objectAtIndex:row];
////            if(row==0)
////            return @"Red";
////            else if (row==1)
////                return @"Green";
////            else if(row==2)
////                return @"Yellow";
////            
////            else if (row==3)
////                return @"Blue";
////            else if(row == 4)
////                return @"Ornage";
////            
////            else
////                return @"White";
//        }
//    
//}
//
//-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
//{
//    int row1=[_picker selectedRowInComponent:0];
//    int row2=[_picker selectedRowInComponent:1];
//    _selectedPickervalue.text=[NSString stringWithFormat:@" %@  %@",[_cityarray objectAtIndex:row1],[_colorarray objectAtIndex:row2]];
//    
//    switch (row2) {
//        case 0:
//              self.view.backgroundColor=[UIColor blueColor];
//            break;
//        case 1:
//            self.view.backgroundColor=[UIColor redColor];
//            break;
//        
//        case 2:
//            self.view.backgroundColor=[UIColor greenColor];
//            break;
//        
//        case 3:
//            self.view.backgroundColor=[UIColor yellowColor];
//            break;
//        
//        case 4:
//            self.view.backgroundColor=[UIColor brownColor];
//            break;
//        default:
//            break;
//    }
//   
//    
//}

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
