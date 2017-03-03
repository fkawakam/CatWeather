//
//  Food.h
//  CatWeather
//
//  Created by f_kawakami on 2017/03/03.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject
{
 NSArray *foods;
}
@property (readonly)int counter;

-(id)initWithFoods:(NSArray *)entryFoods;
-(NSString *)choiceFood;
@end
