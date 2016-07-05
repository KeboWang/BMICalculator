//
//  User.h
//  BMICalculator
//
//  Created by Bill Wang on 6/29/16.
//  Copyright © 2016 Bill Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property(strong, nonatomic) NSNumber*weightInKg;
@property(strong, nonatomic) NSNumber*heightInCm;
@property(strong,nonatomic) NSNumber*age;
@property(strong,nonatomic)NSNumber*gender;

+(User*) sharedUserInstance;
-(NSNumber*) bmi;
-(NSNumber*) bmr;
@end
