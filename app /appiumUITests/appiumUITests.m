//
//  appiumUITests.m
//  appiumUITests
//
//  Created by XiaoGang on 2018/3/12.
//  Copyright © 2018年 xiaojiekeji. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface appiumUITests : XCTestCase

@end

@implementation appiumUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app/*@START_MENU_TOKEN@*/.buttons[@"abtn"]/*[[".buttons[@\"0\"]",".buttons[@\"abtn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    [app/*@START_MENU_TOKEN@*/.buttons[@"abtn"]/*[[".buttons[@\"2\"]",".buttons[@\"abtn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    [app/*@START_MENU_TOKEN@*/.buttons[@"abtn"]/*[[".buttons[@\"4\"]",".buttons[@\"abtn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    [app/*@START_MENU_TOKEN@*/.buttons[@"abtn"]/*[[".buttons[@\"4\"]",".buttons[@\"abtn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    NSString *c = [app.staticTexts[@"aLabel"] label];
    XCTAssertEqual([c intValue],4);
}

@end
