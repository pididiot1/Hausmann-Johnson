//
//  ViewController.m
//  Impact of a Claim
//
//  Created by Adam Hart on 6/1/14.
//  Copyright (c) 2014 Hausmann-Johnson Insurance. All rights reserved.
//

#import "ViewController.h"

@interface UITextField (FloatValue)

-(float)getFloat;

@end

@implementation UITextField (FloatValue)

-(float)getFloat {
    return atof([[self text]UTF8String]);
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

float calcPremiumCost(float premium, float amount, float discount, float C, float D, float G, float H) {
    float A = amount * discount;
    float B = A;
    float E = A - B;
    float F = C - D;
    return premium * (B + E * G + (1 - G) * F + H) / (D + (F * G) + (1 - G) * F + H);
}

- (IBAction)calcResult:(id)sender {
    
    
    expectedLosses = [_elr getFloat]*[_payroll getFloat]/100;
    primaryExpected = expectedLosses*[_dRatio getFloat];
    
    medCostOnPremium = calcPremiumCost([_premium getFloat], [_medClaim getFloat], 0.3, expectedLosses, primaryExpected, [_weighted getFloat], [_ballast getFloat]);
    
    minCostOnPremium = calcPremiumCost([_premium getFloat], [_minClaim getFloat], 1, expectedLosses, primaryExpected, [_weighted getFloat], [_ballast getFloat]);
    
    premiumDiff = minCostOnPremium - medCostOnPremium;
    
    [_medCOP setText:[NSString stringWithFormat:@"$%.2f", medCostOnPremium]];
    [_minCOP setText:[NSString stringWithFormat:@"$%.2f", minCostOnPremium]];
    
    [_premiumDifference setText:[NSString stringWithFormat:@"$%.2f", premiumDiff]];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
