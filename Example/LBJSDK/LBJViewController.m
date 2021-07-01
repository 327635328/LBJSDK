//
//  LBJViewController.m
//  LBJSDK
//
//  Created by x1248399884@163.com on 07/01/2021.
//  Copyright (c) 2021 x1248399884@163.com. All rights reserved.
//

#import "LBJViewController.h"
#import "LBJObject.h"
@interface LBJViewController ()

@end

@implementation LBJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    LBJObject * obj = [[LBJObject alloc]init];
    [obj showTest];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
