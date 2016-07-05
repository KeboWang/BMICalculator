//
//  ViewController.h
//  BMICalculator
//
//  Created by Bill Wang on 6/29/16.
//  Copyright © 2016 Bill Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *Weight;
@property (weak, nonatomic) IBOutlet UITextField *Height;
@property (weak, nonatomic) IBOutlet UILabel *BMI;
@property (weak, nonatomic) IBOutlet UITextField *Age;
@property (weak, nonatomic) IBOutlet UISegmentedControl *Gender;
@property (weak, nonatomic) IBOutlet UILabel *BMR;
@property (weak, nonatomic) IBOutlet UIImageView *Result;
- (IBAction)buttonPressed:(id)sender;

@end

