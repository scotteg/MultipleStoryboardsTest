//
//  RedViewController.m
//  MultipleStoryboardsTest
//
//  Created by Scott Gardner on 4/8/14.
//  Copyright (c) 2014 Optimac, Inc. All rights reserved.
//

#import "RedViewController.h"

@interface RedViewController ()
@property (strong, nonatomic) UIStoryboard *secondTabBar;
@end

@implementation RedViewController

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  
  if (!self.secondTabBar) {
    self.secondTabBar = [UIStoryboard storyboardWithName:@"SecondTabBar" bundle:nil];
    UINavigationController *controller = [self.secondTabBar instantiateInitialViewController];
    [self presentViewController:controller animated:NO completion:nil];
  }
}

- (void)viewDidDisappear:(BOOL)animated
{
  [super viewDidDisappear:animated];
  self.secondTabBar = nil;
}

@end
