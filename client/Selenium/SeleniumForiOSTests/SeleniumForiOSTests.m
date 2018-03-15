//
//  SeleniumForiOSTests.m
//  SeleniumForiOSTests
//
//  Created by Dan Cuellar on 28/10/2014.
//  Copyright (c) 2014 Appium. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SERemoteWebDriver.h"
#import "SECapabilities.h"
#import "SEBy.h"
#import "SEWebElement.h"

@interface SeleniumForiOSTests : XCTestCase

@end

SERemoteWebDriver *driver;

@implementation SeleniumForiOSTests
/*
 {
 "platformName": "iOS",
 "platformVersion": "10.0",
 "deviceName": "iPhone Simulator",
 "app": "/Users/xiaogang/Desktop/appium.app",
 "noReset": true
 }
*/
- (void)setUp {
    [super setUp];
    SECapabilities *c = [SECapabilities new];
    [c setPlatformName:@"iOS"];
    [c setDeviceName:@"iPhone Simulator"];
    [c setVersion:@"10.0"];
    [c setApp:@"/Users/xiaogang/Desktop/appium.app"];
    [c setAutomationName:@"XCUITest"];
    NSError *error;
    driver = [[SERemoteWebDriver alloc] initWithServerAddress:@"0.0.0.0" port:4723 desiredCapabilities:c requiredCapabilities:nil error:&error];
}

- (void)tearDown {
    [driver quit];
    [super tearDown];
    
}

- (void) testUrl
{
    SEBy * sBtn = [SEBy accessibilityId: @"abtn"];
    SEWebElement* e = [driver findElementBy:sBtn];
    [e click];
    [e click];
    [e click];
    [e click];
    SEBy * sLabel = [SEBy accessibilityId: @"aLabel"];
    SEWebElement* eLabel = [driver findElementBy:sLabel];
    NSString * value = [eLabel text];
    XCTAssertEqual([value intValue],4);
}

//-(void) testSendKeys
//{
//    [driver setUrl:[[NSURL alloc] initWithString:@"http://appium.io/selenium-objective-c/testpages/textbox.html"]];
//    SEWebElement *a = [driver findElementBy:[SEBy idString:@"text1"]];
//    NSString *textToType = @"Hello World";
//    [a sendKeys:textToType];
//    NSString *typedText = [a text];
//    XCTAssertTrue([typedText isEqualToString:textToType], @"SendKeys");
//}


@end
