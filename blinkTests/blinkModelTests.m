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
{
    epiBlinkModel* blinkModel;
    unsigned int numberNotifications;
}

-(id)init
{
    self = [super init];
    numberNotifications = 0;
    return self;
}

-(void)beatNotificationHandle:(NSNotification*)note
{
    numberNotifications++;
}

- (void)setUp
{
    [super setUp];
    blinkModel = [[epiBlinkModel alloc] init];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(beatNotificationHandle:)
                                                 name:@"beatNotification"
                                               object:nil];
}

- (void)tearDown
{
    blinkModel = Nil;
    [super tearDown];
}

- (void)testDefaultFrequency
{
    XCTAssertEqual(10u, blinkModel.frequency, @"Test default frequency");
}

-(void)testIncrementFrequency
{
    [blinkModel incrementFrequency:10];
    XCTAssertEqual(20u, blinkModel.frequency, @"Test increment frequency");
}

-(void)testDecrementFrequency
{
    [blinkModel decrementFrequency:10];
    XCTAssertEqual(0u, blinkModel.frequency, @"Test increment frequency");
}

-(void)testDecrementFrequencyBiggerValue
{
    [blinkModel decrementFrequency:12];
    XCTAssertEqual(0u, blinkModel.frequency, @"Test decrement frequency");
}

-(void)testBeatNotificationAfterFrequency
{
    [blinkModel startBeat];
    XCTAssertEqual(1u, numberNotifications, @"Test beat notification");
}
@end
