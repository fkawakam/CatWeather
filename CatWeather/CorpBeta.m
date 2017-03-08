//
//  CoreBeta.m
//  CatWeather
//
//  Created by f_kawakami on 2017/03/07.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import "CorpBeta.h"

@implementation CorpBeta

- (NSArray *)readPlist{
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"CorpBeta" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    return array;
}

@end
