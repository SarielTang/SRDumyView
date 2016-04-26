//
//  ViewController.m
//  SRDumyView
//
//  Created by SarielTang on 16/4/26.
//  Copyright © 2016年 Sariel. All rights reserved.
//

#import "ViewController.h"

#import "SRDumyView.h"

@interface ViewController ()<SRDumyViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 200, 300);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClick {
    NSLog(@"按钮被点击了...");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    SRDumyView *dumyView = [[SRDumyView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:dumyView];
    dumyView.delegate = self;
    [dumyView show];
}

- (void)dumyViewDidTaped:(SRDumyView *)view {
    //当遮罩视图被点击的时候进行的处理
    NSLog(@"遮罩视图被点击...");
    [view dismiss];
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
