//
//  MyTabBarViewController.m
//  TestAPP
//
//  Created by iosOne on 16/5/14.
//  Copyright © 2016年 iosOne. All rights reserved.
//

#import "MyTabBarViewController.h"
#import "BaseNavigationViewController.h"
#import "TALPJ_MasterViewController.h"
#import "TALPJ_MoreViewController.h"
#import "TALPJ_HomeViewController.h"
#import <objc/runtime.h>
#import "UITabBar+Exchange.h"

@interface MyTabBarViewController ()
@property(nonatomic,strong)UIButton *btn;
@end

@implementation MyTabBarViewController

+(void)load
{
    Method ori_method = class_getInstanceMethod([UITabBar class], @selector(hitTest:withEvent:));
    Method my_method = class_getInstanceMethod([UITabBar class], @selector(x_hitTest:withEvent:));
    method_exchangeImplementations(ori_method, my_method);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.translucent = NO;
    TALPJ_MasterViewController *MasterVC = [[TALPJ_MasterViewController alloc] init];
    TALPJ_MoreViewController *MoreVC  = [[TALPJ_MoreViewController alloc] init];
    TALPJ_HomeViewController *HomeVC = [[TALPJ_HomeViewController alloc] init];
    BaseNavigationViewController *BNVC1 = [[BaseNavigationViewController alloc] initWithRootViewController:HomeVC];
    BaseNavigationViewController *BNVC2 = [[BaseNavigationViewController alloc] initWithRootViewController:MasterVC];
    BaseNavigationViewController *BNVC3 = [[BaseNavigationViewController alloc] initWithRootViewController:MoreVC];
    UITabBarItem *HomeBI = [[UITabBarItem alloc]initWithTitle:MyLocal(@"master") image:[UIImage imageNamed:@"ImageHome"] tag:0];
    BNVC1.tabBarItem = HomeBI;
    UITabBarItem *MasterBI = [[UITabBarItem alloc]initWithTitle:MyLocal(@"home") image:[UIImage imageNamed:@"ImageHome"] tag:1];
    BNVC2.tabBarItem = MasterBI;
    UITabBarItem *MoreBI = [[UITabBarItem alloc]initWithTitle:MyLocal(@"more") image:[UIImage imageNamed:@"ImageHome"] tag:2];
    BNVC3.tabBarItem = MoreBI;
    self.viewControllers = @[BNVC1,BNVC2,BNVC3];
    self.tabBar.barTintColor = [UIColor greenColor];
    
//    self.tabBar.barTintColor = CLEARCOLOR;
//    self.tabBar.backgroundColor = [UIColor greenColor];
//    self.tabBar.clipsToBounds = NO;
//    NSArray *vArr = [self.tabBar subviews];
//    UIView *v = vArr[vArr.count/2];
//    [v removeFromSuperview];
//    CGRect frect = v.frame;
//    CGPoint cpoint = v.center;
//    self.tabBar.btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    self.tabBar.btn.bounds = CGRectMake(0, 0, frect.size.height, frect.size.height);
//    self.tabBar.btn.center = CGPointMake(cpoint.x, cpoint.y-10);
//    self.tabBar.btn.backgroundColor =[UIColor redColor];
//    [self.tabBar.btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.tabBar addSubview:self.tabBar.btn];
    [self countAllSubViews:self.tabBar];
}

- (void)viewWillLayoutSubviews{
//    CGRect tabFrame = self.tabBar.frame; //self.TabBar is IBOutlet of your TabBar
//    tabFrame.size.height = 80;
//    tabFrame.origin.y = self.view.frame.size.height - 80;
//    self.tabBar.frame = tabFrame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)btnClick:(UIButton *)btn
{
    self.selectedIndex = 1;
}



@end
