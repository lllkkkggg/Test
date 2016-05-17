//
//  TALPJ_MasterViewController.m
//  TestAPP
//
//  Created by iosOne on 16/5/14.
//  Copyright © 2016年 iosOne. All rights reserved.
//

#import "TALPJ_MasterViewController.h"
#import "DoublePanVeiw.h"
#import "TwoView.h"
#import "CanotTouchView.h"

@interface TALPJ_MasterViewController ()

@end

@implementation TALPJ_MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"主页";
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    DoublePanVeiw *view = [DoublePanVeiw new];
    view.frame = CGRectMake(10, 50, 300, 100);
    view.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:view];
    TwoView *view1 = [TwoView new];
    view1.frame = CGRectMake(10, 200, 300, 100);
    view1.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view1];
    
    CanotTouchView *vi = [[CanotTouchView alloc]init];
    vi.frame = self.view.bounds;
    vi.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
    [self.view addSubview:vi];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor blueColor]];
    btn.frame = CGRectMake(10, 10, 50, 50);
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [vi addSubview:btn];
    
}

-(void)btnClick:(UIButton *)btn
{
    NSLog(@"-----------------==========++++++++++++");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
