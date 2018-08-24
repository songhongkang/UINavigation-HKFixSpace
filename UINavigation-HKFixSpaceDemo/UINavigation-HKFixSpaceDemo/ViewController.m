//
//  ViewController.m
//  UINavigation-HKFixSpace
//
//  Created by 宋宏康 on 2018/8/22.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "UIBarButtonItem+HKTool.h"
#import "VC_Test.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem hk_initWithBarButtonImage:@"Image" buttonType:UIButtonTypeCustom title:@"返回" color:[UIColor purpleColor] ControlContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft btnClick:^{
        NSLog(@"btnClick");
    }];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem hk_initWithBarButtonImage:@"Image" buttonType:UIButtonTypeCustom ControlContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight btnClick:^{
        NSLog(@"btnClick");
    }];
}

- (void)configNavigation
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"11" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(0, 0, 40, 40);
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setTitle:@"22" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor purpleColor];
    btn1.frame = CGRectMake(0, 0, 40, 40);
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"33" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor purpleColor];
    btn2.frame = CGRectMake(0, 0, 40, 40);
    
    self.navigationItem.leftBarButtonItems = @[[[UIBarButtonItem alloc] initWithCustomView:btn],[[UIBarButtonItem alloc] initWithCustomView:btn2]];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn1];
}

- (void)creatUI
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.centerY.mas_equalTo(0);
        make.width.height.mas_equalTo(50);
    }];
}

- (void)btnClick:(UIButton *)sender
{
    [self.navigationController pushViewController:[VC_Test new] animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
