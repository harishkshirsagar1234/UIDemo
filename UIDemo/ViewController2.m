//
//  ViewController2.m
//  UIDemo
//
//  Created by student14 on 27/09/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor whiteColor];
    _view1= [[UIView alloc]init];
   //    _view1.backgroundColor=[UIColor greenColor];
    _view1.frame=CGRectMake(40, 100, 230, 100);
    [self.view addSubview:_view1];
    _slider1 = [[UISlider alloc]initWithFrame:CGRectMake(40, 230, 250, 30)];
    _slider1.minimumTrackTintColor=[UIColor redColor];
    _slider1.maximumTrackTintColor=[UIColor brownColor];
    _slider1.minimumValue=1;
    _slider1.maximumValue=255;
    [_slider1 addTarget:self action:@selector(Sliderchange:) forControlEvents:UIControlEventValueChanged];
    //[_slider1 setValue:30 animated:YES];
    [self.view addSubview:_slider1];
    
    _slider2 = [[UISlider alloc]initWithFrame:CGRectMake(40, 270, 250, 30)];
    _slider2.minimumTrackTintColor=[UIColor greenColor];
    _slider2.maximumTrackTintColor=[UIColor brownColor];
    _slider2.minimumValue=1;
    _slider2.maximumValue=255;
    [_slider2 addTarget:self action:@selector(Sliderchange:) forControlEvents:UIControlEventValueChanged];
  //  [_slider2 setValue:30 animated:YES];
    [self.view addSubview:_slider2];
    
    _slider3 = [[UISlider alloc]initWithFrame:CGRectMake(40, 310, 250, 30)];
    _slider3.minimumTrackTintColor=[UIColor blueColor];
    _slider3.maximumTrackTintColor=[UIColor brownColor];
    _slider3.minimumValue=1;
    _slider3.maximumValue=255;
    [_slider3 addTarget:self action:@selector(Sliderchange:) forControlEvents:UIControlEventValueChanged];
   // [_slider3 setValue:30 animated:YES];
    [self.view addSubview:_slider3];
    
}


-(void)Sliderchange:(id)sender
{
    _view1.backgroundColor=[UIColor colorWithRed:_slider1.value/255.0 green:_slider2.value/255.0 blue:_slider3.value/255.0 alpha:1.0];
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
