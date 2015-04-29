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

- (NSString *)getDocumentDirectory {
    NSLog(@"%s",__FUNCTION__);
    NSArray *arrayPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [arrayPaths objectAtIndex:0];
    return docDir;
}

- (NSString *)getHomeDirectory {
    NSString *homeDir = NSHomeDirectory();
    return homeDir;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",[self getDocumentDirectory]);
    NSLog(@"%@",[self getHomeDirectory]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
