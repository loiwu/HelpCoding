//
//  ViewController.m
//  DailyCase
//
//  Created by Loi Wu on 6/30/15.
//  Copyright (c) 2015 Loi Wu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"NSBundle -  %@",[NSBundle mainBundle]);
    NSLog(@"NSHomeDirectory - %@",NSHomeDirectory());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
