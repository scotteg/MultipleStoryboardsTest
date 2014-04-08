//
//  BlueViewController.m
//  MultipleStoryboardsTest
//
//  Created by Scott Gardner on 4/8/14.
//  Copyright (c) 2014 Optimac, Inc. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (IBAction)showOrangeStoryboard:(id)sender
{
  UIStoryboard *orangeStoryboard = [UIStoryboard storyboardWithName:@"Orange" bundle:nil];
  UIViewController *controller = [orangeStoryboard instantiateInitialViewController];
  [self presentViewController:controller animated:NO completion:nil];
}

@end
