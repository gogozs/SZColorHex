//
//  SZColorHexTests.m
//  SZColorHexTests
//
//  Created by Song Zhou on 26/11/2017.
//  Copyright © 2017 Song Zhou. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SZColorHex.h"

static const uint32_t exampleColor = 0xE41B17;
static const NSString *exampleColorString = @"0xE41B17";

@interface SZColorHexTests : XCTestCase

@end

@implementation SZColorHexTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEqual {
    UIColor *color = [UIColor colorWithRed:228/255.0 green:27/255.0 blue:23/255.0 alpha:1.0];
    UIColor *colorHex = [UIColor colorFromHex:exampleColor];
    UIColor *colorString = [UIColor colorFromHexString:exampleColorString];
    
    XCTAssert([color isEqual:colorHex]);
    XCTAssert([color isEqual:colorString]);
}

@end
