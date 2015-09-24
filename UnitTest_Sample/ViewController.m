//
//  ViewController.m
//  UnitTest_Sample
//
//  Created by 麻生 拓弥 on 2015/09/24.
//  Copyright (c) 2015年 麻生 拓弥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedBar;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end

@implementation ViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // セグメントの選択が変更されたときに呼ばれるメソッドを設定
    [self.segmentedBar addTarget:self
                          action:@selector(segmentValueChanged:)
                forControlEvents:UIControlEventValueChanged];
}

#pragma mark - Action
#pragma mark segmented Control

/**
 * セグメントの選択が変更されたとき
 * @param sender 送られる情報
 * これくらいなら関数化する必要はないが・・・
 */
- (void)segmentValueChanged:(id)sender
{
    // 選択されたセグメントの値によってラベルを変える
    switch (self.segmentedBar.selectedSegmentIndex) {
        case 0: // Test0 が選択されたとき
            self.valueLabel.text = [self getValueLabel:0];
            break;
        case 1: // Test1 が選択されたとき
            self.valueLabel.text = [self getValueLabel:1];
            break;
        case 2: // Test2 が選択されたとき
            self.valueLabel.text = [self getValueLabel:2];
            break;
        case 3: // Test3 が選択されたとき
            self.valueLabel.text = [self getValueLabel:3];
            break;
        default: // それ以外(この場合は引けない)
            self.valueLabel.text = [self getValueLabel:-1];
            break;
    }
}

/**
 * ラベルに表示するテキストを返す
 * @param num 選択されたセグメントの値
 */
- (NSString*)getValueLabel:(NSInteger)num {
    
    NSString *value = [NSString stringWithFormat:@"Value = %ld", num];
    return value;
}

#pragma mark - Memory Warning

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
