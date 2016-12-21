//
//  LoginViewController.m
//  UIDemo
//
//  Created by student14 on 20/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "LoginViewController.h"
#import "PickerViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor orangeColor];
    _container =[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    _actualimage=[UIImage imageNamed:@"2"];
    _container.image=_actualimage;
    [self.view addSubview:_container];
    
    _view1= [[UIView alloc]init];
//    _view1.backgroundColor=[UIColor greenColor];

    _view1.frame=CGRectMake(40, 280, 230, 30);

    [self.view addSubview:_view1];

    
    _Usernamelbl=[[UILabel alloc]initWithFrame:CGRectMake(50, 50, 200, 50)];
    _Usernamelbl.text=@"Username";
    [self.view addSubview:_Usernamelbl];
    
    _Passwordlbl=[[UILabel alloc]initWithFrame:CGRectMake(50, 90, 200, 50)];
    _Passwordlbl.text=@"Password";
    [self.view addSubview:_Passwordlbl];
    
    _usernametext=[[UITextField alloc]initWithFrame:CGRectMake(140, 60, 150, 30)];
    _usernametext.borderStyle=UITextBorderStyleRoundedRect;
    _usernametext.keyboardAppearance=UIKeyboardAppearanceDark;
    _usernametext.keyboardType=UIKeyboardTypeEmailAddress;
    _usernametext.returnKeyType=UIReturnKeyNext;
    _usernametext.delegate=self;
    [self.view addSubview:_usernametext];
    
    _Passwordtext=[[UITextField alloc]initWithFrame:CGRectMake(140, 100, 150, 30)];
    _Passwordtext.borderStyle=UITextBorderStyleRoundedRect;
    _Passwordtext.secureTextEntry=true;
    _Passwordtext.returnKeyType=UIReturnKeyDone;
    _Passwordtext.delegate=self;
    [self.view addSubview:_Passwordtext];
    
    _loginbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _loginbtn.frame=CGRectMake(60, 150, 100, 50);
    [_loginbtn setTitle:@"LOGIN" forState:UIControlStateNormal];
    [_loginbtn setTitle:@"Selected" forState:UIControlStateHighlighted];
    [_loginbtn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginbtn];
    
    _Cancelbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _Cancelbtn.frame=CGRectMake(170, 150, 100, 50);
   [ _Cancelbtn setTitle:@"Cancel" forState:UIControlStateNormal];
    [_Cancelbtn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_Cancelbtn];
    
    _segmentview=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Yellow",@"Blue",@"Green", nil]];
    _segmentview.frame=CGRectMake(40, 210, 230, 50);
    [_segmentview addTarget:self action:@selector(segmentchange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_segmentview];
   
    _switch1=[[UISwitch alloc]initWithFrame:CGRectMake(130, 320, 30, 30)];
    [_switch1 addTarget:self action:@selector(Switchchange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_switch1];
    _slider = [[UISlider alloc]initWithFrame:CGRectMake(20, 360, 250, 30)];
    _slider.minimumTrackTintColor=[UIColor yellowColor];
    _slider.maximumTrackTintColor=[UIColor brownColor];
    _slider.minimumValue=1;
    _slider.maximumValue=100;
    [_slider addTarget:self action:@selector(Sliderchange) forControlEvents:UIControlEventValueChanged];
    [_slider setValue:30 animated:YES];
    [self.view addSubview:_slider];
    self.navigationItem.title=@"Login";
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclick)];
    self.navigationItem.rightBarButtonItem=rbtn;
}


//-(void)Loginbtnclick
//{
//    NSLog(@"login Clicked");
//    if([_usernametext.text isEqual:@"Vinod"] && [_Passwordtext.text isEqual:@"Chopade"])
//    {
//        NSLog(@"loginbtn - %@ ",_loginbtn);
//    NSLog(@"login succ");
//    } else
//        NSLog(@"failed");
//}
//-(void)Cancelbtnclick
//{
//    NSLog(@"cancel clicked");
//}
-(void)Sliderchange
{
    NSLog(@"%.2f",_slider.value);
}


-(void)Switchchange
{
    if(_switch1.on)
        NSLog(@"On");
    else
    NSLog(@"Off");
}

-(void)segmentchange
{
    switch(_segmentview.selectedSegmentIndex)
    {
        case 0:
            _view1.backgroundColor=[UIColor yellowColor];
           // self.view.backgroundColor=[UIColor yellowColor];
            break;
        
        case 1:
            _view1.backgroundColor=[UIColor blueColor];
           // self.view.backgroundColor=[UIColor blueColor];
            break;
       
        case 2:
            _view1.backgroundColor=[UIColor greenColor];
          //  self.view.backgroundColor=[UIColor greenColor];
            break;
            
        default:
            break;
    }
}

-(void)btnclick:(id)sender
{
    if(sender == _loginbtn)
    {
        
//        if([_usernametext.text isEqualToString:_Passwordtext.text])
//            NSLog(@"srings equal");
//        else
//            NSLog(@"strings not equal");
//        
//        if([_usernametext.text isEqualToString:@"Vinod"] && [_Passwordtext.text isEqualToString:@"Chopade"])
//               {
//                NSLog(@"login succ");
        PickerViewController *pvc=[[PickerViewController alloc]init];
        [self.navigationController pushViewController:pvc animated:YES];
                }
        else
            NSLog(@"Login Failed");
        
//    self.view.backgroundColor=[UIColor redColor];
  //  }
    //else self.view.backgroundColor=[UIColor greenColor];
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"should begin");
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    NSLog(@"Did Begin");

}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    NSLog(@"should end");
    NSLog(@"username - %@ and Password = %@",_usernametext.text,_Passwordtext.text);
    return YES;
    
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"did end");
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField==_usernametext)
        [_Passwordtext becomeFirstResponder];
    else
        [_Passwordtext resignFirstResponder];
    return YES;
    
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
