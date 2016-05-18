//
//  ViewControllerTests.m
//  XCodeSetting
//
//  Created by 陈腾飞 on 16/3/3.
//  Copyright © 2016年 BeiJingYuntai. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewControllerTests : XCTestCase

@property (nonatomic, strong) ViewController *viewController;

@end

@implementation ViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.viewController = [[ViewController alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.viewController = nil;  // 注意释放顺序
    
    [super tearDown];
}

- (void)testCalculate1 {
    double dbRevenue = 5000;
    NSString *strRevenue = [NSString stringWithFormat:@"%f", dbRevenue];
    NSString *strTax = [self.viewController calculate:strRevenue];
    XCTAssertTrue([strTax doubleValue] == 30, @"期望值是：45  实际值是：%@", strTax);
}

- (void)testCalculate2 {
    double dbRevenue = 8000;
    NSString *strRevenue = [NSString stringWithFormat:@"%f", dbRevenue];
    NSString *strTax = [self.viewController calculate:strRevenue];
    XCTAssertTrue([strTax doubleValue] == 345, @"期望值是：345  实际值是：%@", strTax);
}

- (void)testCalculate3 {
    double dbRevenue = 12500;
    NSString *strRevenue = [NSString stringWithFormat:@"%f", dbRevenue];
    NSString *strTax = [self.viewController calculate:strRevenue];
    XCTAssertTrue([strTax doubleValue] == 1245, @"期望值是：1245  实际值是：%@", strTax);
}
@end
