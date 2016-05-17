//
//  TALPJ_MoreViewController.m
//  TestAPP
//
//  Created by iosOne on 16/5/14.
//  Copyright © 2016年 iosOne. All rights reserved.
//

#import "TALPJ_MoreViewController.h"
#import "CustomTouchView.h"
#import "DrawView.h"

@interface TALPJ_MoreViewController ()

@end

@implementation TALPJ_MoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.navigationItem.title = @"更多";
    
    CustomTouchView *cv = [[CustomTouchView alloc]initWithFrame:CGRectMake(10, 100, 100, 100)];
    cv.backgroundColor = [UIColor redColor];
//    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
//    v.backgroundColor = [UIColor blackColor];
//    [cv addSubview:v];
    [self.view addSubview:cv];
    
    DrawView *dr = [[DrawView alloc]initWithFrame:CGRectMake(10, 250, 200, 100)];
    [self.view addSubview:dr];
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
