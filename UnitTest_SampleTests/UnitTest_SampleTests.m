//
//  UnitTest_SampleTests.m
//  UnitTest_SampleTests
//
//  Created by 麻生 拓弥 on 2015/09/24.
//  Copyright (c) 2015年 麻生 拓弥. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

// テストするメソッドのあるヘッダファイルを読み込む
#import "ViewController.h"

// テストするメソッドを呼び出す
@interface ViewController (PrivateTests)

- (NSString*)getValueLabel:(NSInteger)num;

@end

@interface UnitTest_SampleTests : XCTestCase

@end

@implementation UnitTest_SampleTests

static NSString *const kValueZero = @"Value = 0";
static NSString *const kValueOne = @"Value = 1";
static NSString *const kValueTwo = @"Value = 2";
static NSString *const kValueThree = @"Value = 3";
static NSString *const kValueError = @"Value = -1";


- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

// 0 が選択されたとき得られる値をテスト
- (void)testGetValueLabelZero
{
    ViewController *VC = [[ViewController alloc] init];
    NSString *str = [VC getValueLabel:0];
    
    // ==========================================
    // 各値が一致していることを期待
    XCTAssertTrue([str isEqualToString:kValueZero]);
    // ==========================================
}

// 1 が選択されたとき得られる値をテスト
- (void)testGetValueLabelOne
{
    ViewController *VC = [[ViewController alloc] init];
    NSString *str = [VC getValueLabel:1];
    
    // ==========================================
    // 各値が一致していることを期待
    XCTAssertTrue([str isEqualToString:kValueOne]);
    // ==========================================
}

// 2 が選択されたとき得られる値をテスト
- (void)testGetValueLabelTwo
{
    ViewController *VC = [[ViewController alloc] init];
    NSString *str = [VC getValueLabel:2];
    
    // ==========================================
    // 各値が一致していることを期待
    XCTAssertTrue([str isEqualToString:kValueTwo]);
    // ==========================================
}

// 3 が選択されたとき得られる値をテスト
- (void)testGetValueLabelThree
{
    ViewController *VC = [[ViewController alloc] init];
    NSString *str = [VC getValueLabel:3];
    
    // ==========================================
    // 各値が一致していることを期待
    XCTAssertTrue([str isEqualToString:kValueThree]);
    // ==========================================
}

// -1 が選択されたとき得られる値をテスト
- (void)testGetValueLabelError
{
    ViewController *VC = [[ViewController alloc] init];
    NSString *str = [VC getValueLabel:-1];
    
    // ==========================================
    // 各値が一致していることを期待
    XCTAssertTrue([str isEqualToString:kValueError]);
    // ==========================================
}

@end
