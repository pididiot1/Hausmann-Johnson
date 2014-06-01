//
//  ViewController.h
//  PullingValues
//
//  Created by Adam Hart on 6/1/14.
//  Copyright (c) 2014 Hausmann-Johnson Insurance. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UILabel *result;
@property IBOutlet UITextField *a, *b;
@property IBOutlet UIButton *button;

- (IBAction)calcResult:(id)sender;


@end
