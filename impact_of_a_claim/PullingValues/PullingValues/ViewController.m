//
//  ViewController.m
//  PullingValues
//
//  Created by Adam Hart on 6/1/14.
//  Copyright (c) 2014 Hausmann-Johnson Insurance. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)calcResult:(id)sender {
    [_result setText:[NSString stringWithFormat:@"%f", [[_a text] floatValue] + [[_b text] floatValue]]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
