//
//  ViewController.h
//  Impact of a Claim
//
//  Created by Adam Hart on 6/1/14.
//  Copyright (c) 2014 Hausmann-Johnson Insurance. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // General
    float premiumDiff;
    float expectedLosses, primaryExpected;
    // Med only
    float medExpectedExcess, medActualExcess;
    float medActualIncurred, medPrimaryActual;
    float medImpactOnMod, medCostOnPremium;
    // Med/Indemnity
    float minExpectedExcess, minActualExcess;
    float minActualIncurred, minPrimaryActual;
    float minImpactOnMod, minCostOnPremium;
}
// General
@property IBOutlet UITextField *premium;
@property IBOutlet UITextField *payroll, *dRatio, *elr, *ballast, *weighted;

// Med only
@property IBOutlet UITextField *medClaim;

// Med/Indemnity
@property IBOutlet UITextField *minClaim;

// Results
@property IBOutlet UILabel *medCOP, *minCOP, *premiumDifference;
- (IBAction)calcResult:(id)sender;

@end
