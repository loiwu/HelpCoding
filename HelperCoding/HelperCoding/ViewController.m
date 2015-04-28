//
//  ViewController.m
//  HelperCoding
//
//  Created by pp on 4/28/15.
//  Copyright (c) 2015 Loi Wu. All rights reserved.
//

#import "ViewController.h"
@class className;

@interface ViewController ()

@end

@implementation ViewController

// Singleton
+ (className *)share {
    static className * sharedString = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedString = [[self alloc] init];
    });
    return sharedString;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
