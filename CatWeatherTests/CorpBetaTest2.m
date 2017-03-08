//
//  CorpBetaTest2.m
//  CatWeather
//
//  Created by f_kawakami on 2017/03/07.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CorpBeta.h"

@interface CorpBetaTest2 : XCTestCase

@end

@implementation CorpBetaTest2

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    CorpBeta *cb = [CorpBeta alloc];
    NSArray *array = [cb readPlist];
    for(int i=0; i<array.count; i++){
        NSDictionary *dic = array[i];
        //NSLog(@"FK No.100 test %@[%02d]", array[i], i);
        for (id k in [dic keyEnumerator]){
            NSLog(@"FK No.200 test %@ = %@", k, dic[k]);
        };
    }
    
    XCTAssertNotNil(array);
    //int i=0;
    //XCTAssertEqual(i,0);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
