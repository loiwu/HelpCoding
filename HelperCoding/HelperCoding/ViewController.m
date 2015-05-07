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

- (NSString *)randomName
{
    int NUMBER_OF_CHARS = arc4random_uniform(4)+5;
    NSLog(@"%d",NUMBER_OF_CHARS);
    
    NSMutableString *randomData = [[NSMutableString alloc] init];
    
    int data=0;
    for (int i=0; i<NUMBER_OF_CHARS; i++) {
        int index = arc4random_uniform(3);
        switch (index) {
            case 0:
                data=arc4random_uniform(10);
                [randomData appendString:[NSString stringWithFormat:@"%d", data]];
                break;
            case 1:
                data=arc4random_uniform(26)+65;
                [randomData appendString:[NSString stringWithFormat:@"%c", data]];
                break;
            case 2:
                data=arc4random_uniform(26)+97;
                [randomData appendString:[NSString stringWithFormat:@"%c", data]];
                break;
            default:
                break;
        }
    }
    return randomData;
}


- (NSString *)randomString
{
    srand((unsigned int) time(NULL));
    int NUMBER_OF_CHARS = rand()%4+5;
    NSLog(@"%d",NUMBER_OF_CHARS);
    char data[NUMBER_OF_CHARS];
    for (int x=0;x<NUMBER_OF_CHARS;data[x++] = (char)('a' + (arc4random_uniform(26))));
    NSMutableString *randomName = [[NSMutableString alloc] initWithBytes:data length:NUMBER_OF_CHARS encoding:NSUTF8StringEncoding];
    
    
    int randomNumber = 0 + arc4random_uniform(9);
    NSLog(@"%d",randomNumber);
    NSString *randomNumberS = [NSString stringWithFormat:@"%d",randomNumber];
    
    int randomPosition = 0 + arc4random_uniform(randomNumber);
    NSLog(@"%d",randomPosition);
    [randomName insertString:randomNumberS atIndex:randomPosition];
    
    return randomName;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",[self getDocumentDirectory]);
    NSLog(@"%@",[self getHomeDirectory]);
    NSLog(@"%@",[self randomName]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
