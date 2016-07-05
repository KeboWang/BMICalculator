//
//  ViewController.m
//  BMICalculator
//
//  Created by Bill Wang on 6/29/16.
//  Copyright © 2016 Bill Wang. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
  /*calculate for BMI*/
  User* u=[User sharedUserInstance];
  u.weightInKg=@(self.Weight.text.floatValue);
  u.heightInCm=@(self.Height.text.floatValue);
  NSNumber*bmi=u.bmi;
  self.BMI.text=bmi.stringValue;
  /*calculate for BMR*/
  u.age=@(self.Age.text.floatValue);
  if(_Gender.selectedSegmentIndex==0){
    u.gender=@0;
  }
  else if(_Gender.selectedSegmentIndex==1) {
    u.gender=@1;
  }
  NSNumber*bmr=u.bmr;
  self.BMR.text=bmr.stringValue;
  /*change image*/
  UIImage*newImage;
  NSString*path;
  NSBundle*myBundle=[NSBundle mainBundle];
  if(bmi.floatValue<18.5){
    path=[myBundle pathForResource:@"underweight" ofType:@"jpg"];
  }
  else if (bmi.floatValue>=18.5 && bmi.floatValue<=24.9){
    path=[myBundle pathForResource:@"normal" ofType:@"jpg"];
  }
  else{
    path=[myBundle pathForResource:@"overweight" ofType:@"jpg"];
  }
  newImage=[UIImage imageWithContentsOfFile:path];
  self.Result.image=newImage;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  [self.Weight resignFirstResponder];
  [self.Height resignFirstResponder];
  [self.Age resignFirstResponder];
}
@end
