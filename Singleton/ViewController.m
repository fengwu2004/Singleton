//
//  ViewController.m
//  Singleton
//
//  Created by ky on 16/7/29.
//  Copyright © 2016年 yellfun. All rights reserved.
//

#import "ViewController.h"
#import "MySingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    MySingleton *a = [[MySingleton alloc] init];
    
    NSLog(@"____%p", a);
    
    MySingleton *b = [MySingleton sharedInstance];
    
    NSLog(@"____%p", b);
    
    MySingleton *c = [[MySingleton alloc] init];
    
    NSLog(@"____%p", c);
}

@end
