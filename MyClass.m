//
//  MyClass.m
//  CatWeather
//
//  Created by f_kawakami on 2017/03/03.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

- (NSString *)hello:(NSString *)who{
    NSString *msg = [NSString stringWithFormat:@"ハロー、%@の%@さん", _where, who];
    return msg;
}

@end
