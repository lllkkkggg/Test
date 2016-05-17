//
//  TALPJ_HomeViewController.m
//  TestAPP
//
//  Created by iosOne on 16/5/14.
//  Copyright © 2016年 iosOne. All rights reserved.
//

#import "TALPJ_HomeViewController.h"

@interface TALPJ_HomeViewController ()
@property(nonatomic,strong)CAShapeLayer *SL;
@end

@implementation TALPJ_HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.navigationItem.title = @"我的";
    [self configLayers];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"sd" forState:UIControlStateNormal];
    btn.frame = CGRectMake(10, 400, 100, 50);
    [btn setBackgroundColor:[UIColor cyanColor]];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)configLayers
{
   
    CALayer *layer = [CALayer layer];
    layer.bounds = CGRectMake(0, 0, 100, 100);
    layer.position = CGPointMake(150, 100);
    layer.backgroundColor = [UIColor cyanColor].CGColor;
    CAGradientLayer *gl1 = [CAGradientLayer layer];
    gl1.position = CGPointMake(25, 50);
    gl1.bounds = CGRectMake(0, 0, 50, 100);
    [gl1 setColors:@[(__bridge id)[UIColor yellowColor].CGColor,(__bridge id)[UIColor colorWithRed:1.0 green:1.0 blue:0.1 alpha:1].CGColor,(__bridge id)[UIColor colorWithRed:0.8 green:1.0 blue:0.5 alpha:1].CGColor,(__bridge id)[UIColor greenColor].CGColor,(__bridge id)[UIColor cyanColor].CGColor]];
    [gl1 setStartPoint:CGPointMake(0.5, 0)];
    [gl1 setEndPoint:CGPointMake(0.5, 1)];
    [layer insertSublayer:gl1 atIndex:0];
    
    CAGradientLayer *gl2 = [CAGradientLayer layer];
    gl2.position = CGPointMake(75, 50);
    gl2.bounds = CGRectMake(0, 0, 50, 100);
    [gl2 setColors:@[(__bridge id)[UIColor yellowColor].CGColor,(__bridge id)[UIColor yellowColor].CGColor,(__bridge id)[UIColor colorWithRed:1.0 green:0.8 blue:0.2 alpha:1].CGColor,(__bridge id)[UIColor orangeColor].CGColor,(__bridge id)[UIColor redColor].CGColor]];
    [gl2 setStartPoint:CGPointMake(0.5, 0)];
    [gl2 setEndPoint:CGPointMake(0.5, 1)];
    [layer insertSublayer:gl2 atIndex:0];
    
    _SL = [CAShapeLayer layer];
    _SL.bounds = CGRectMake(0, 0, 100, 100);
    _SL.position = CGPointMake(50, 50);
    _SL.path =  [UIBezierPath bezierPathWithArcCenter:CGPointMake(50, 50)
                                              radius:41
                                          startAngle:M_PI_2
                                            endAngle:-3*M_PI_2
                                           clockwise:NO].CGPath;
    _SL.strokeColor = [UIColor whiteColor].CGColor;//从圆环处向内外扩展
    _SL.fillColor = [UIColor whiteColor].CGColor;//从半径圆环起计算
    _SL.lineWidth = 20;
    _SL.strokeEnd = 1;
    [layer addSublayer:_SL];

    layer.cornerRadius = 50;
    layer.masksToBounds = YES;
    [self.view.layer addSublayer:layer];
    

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    static float k =0.1;
    if (_SL.strokeEnd<=0||_SL.strokeEnd>=1) {
        k=-k;
    }
     _SL.strokeEnd = _SL.strokeEnd + k;
}

@end
