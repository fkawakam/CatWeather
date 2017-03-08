//
//  Food.m
//  CatWeather
//
//  Created by f_kawakami on 2017/03/03.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import "Food.h"

@implementation Food
{
    NSString *selectFood;
}

- (id)initWithFoods:(NSArray *)entryFoods{
    self = [super init];
    if(entryFoods){
        foods= entryFoods;
    }else{
        foods= @[@"和食", @"中華", @"インド料理", @"イタリア料理"];
    }
    _counter = 0;
    return self;
}

-(NSString *)choiceFood{
    _counter++;
    if(_counter >= foods.count){
        return [NSString stringWithFormat:@"もう%@にしてください!", selectFood];
    }else{
        selectFood = foods[arc4random()%foods.count];
        return [NSString stringWithFormat:@"%@ではどうでしょうか。", selectFood];
    }
}

@end
