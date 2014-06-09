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
    float premium, premiumDiff;
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
@property IBOutlet UITextField *mod, *payroll, *classCode, *dRatio, *elr, *ballast, *weighted;
@property IBOutlet UITextField *expectedLosses, *primaryExpected;

// Med only
@property IBOutlet UITextField *medAmount;

// Med/Indemnity
@property IBOutlet UITextField *minAmount;

// Results
@property IBOutlet UILabel *medCOP, *minCOP, *premiumDifference;
- (IBAction)calcResult:(id)sender;

@end
