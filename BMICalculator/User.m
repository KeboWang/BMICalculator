//
//  User.m
//  BMICalculator
//
//  Created by Bill Wang on 6/29/16.
//  Copyright © 2016 Bill Wang. All rights reserved.
//

#import "User.h"

static User* secretUser;

@implementation User
@synthesize weightInKg;
@synthesize heightInCm;
@synthesize age;
@synthesize gender;

+(User*)sharedUserInstance
{
  if (secretUser==nil){
    secretUser=[[User alloc] init];
  }
  return secretUser;
}

-(NSNumber*)bmi
{
  float h=self.heightInCm.floatValue;
  float w=self.weightInKg.floatValue;
  float bmi=w/(h*h);
  return @(bmi);
}
-(NSNumber*)bmr
{
  float h=self.heightInCm.floatValue;
  float w=self.weightInKg.floatValue;
  float a=self.age.floatValue;
  float bmr;
  if (self.gender.floatValue==0){
    bmr=66+(13.7*w)+(5*h)-(6.8*a);
  }
  else if(self.gender.floatValue==1){
    bmr=655+(9.6*w)+(1.8*h)-(4.7*a);
  }
  return @(bmr);
  
}

-(NSString*) description
{
  return [NSString stringWithFormat:@"%p %@ %@",self,self.weightInKg,self.heightInCm];
}


@end
