//
//  CatWeatherTests.m
//  CatWeatherTests
//
//  Created by f_kawakami on 2017/03/02.
//  Copyright © 2017 川上 文夫. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface CorpBetaTests : XCTestCase

@end

@implementation CorpBetaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPlist {
    int a = 1;
    XCTAssertEqual(a, 1);
    CoreBeta *cb = [CoreBeta alloc];
    XCTAssertNotNil([cb readPlist]);
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
