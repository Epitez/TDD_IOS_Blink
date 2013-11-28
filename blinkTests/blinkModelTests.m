//
//  blinkTests.m
//  blinkTests
//
//  Created by jeff on 28/11/2013.
//  Copyright (c) 2013 jeff. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "epiBlinkModel.h"

@interface blinkModelTests : XCTestCase

@end

@implementation blinkModelTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDefaultFrequency
{
    epiBlinkModel* blinkModel = [[epiBlinkModel alloc] init];
    XCTAssertEqual(10u, blinkModel.frequency, @"Test default frequency");
}

-(void)testIncrementFrequency
{
    epiBlinkModel* blinkModel = [[epiBlinkModel alloc] init];
    [blinkModel incrementFrequency:10];
    XCTAssertEqual(20u, blinkModel.frequency, @"Test increment frequency");
}
@end
