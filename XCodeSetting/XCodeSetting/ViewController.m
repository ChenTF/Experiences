//
//  ViewController.m
//  XCodeSetting
//
//  Created by 陈腾飞 on 16/2/29.
//  Copyright © 2016年 BeiJingYuntai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  @brief 计算个人所得税
 *
 *  @param revenue 总工资
 *
 *  @return 应上税
 */
- (NSString *)calculate:(NSString *)revenue {
    
    // 月应纳个人所得税税额
    double tax = 0.0f;
    if ([revenue length] > 0) {
        double dbRevenue = [revenue doubleValue];
        
        // 月应纳税所得额
        double dbTaxRevenue = dbRevenue - 3500;
        
        if (dbTaxRevenue <= 1500) {
            tax = dbTaxRevenue * 0.03;
        } else if (dbTaxRevenue > 1500 && dbTaxRevenue <= 4500) {
            tax = dbTaxRevenue * 0.1 - 105;
        } else if (dbTaxRevenue > 4500 && dbTaxRevenue <= 9000) {
            tax = dbTaxRevenue * 0.2 - 555;
        } else if (dbTaxRevenue > 9000 && dbTaxRevenue <= 35000) {
            tax = dbTaxRevenue * 0.25 - 1005;
        } else if (dbTaxRevenue > 35000 && dbTaxRevenue <= 55000) {
            tax = dbTaxRevenue * 0.3 - 2755;
        } else if (dbTaxRevenue > 55000 && dbTaxRevenue <= 80000) {
            tax = dbTaxRevenue * 0.35 - 5505;
        } else if (dbTaxRevenue > 80000) {
            tax = dbTaxRevenue * 0.45 - 13505;
        }
    }
    
    NSString *strTax = [NSString stringWithFormat:@"%.2f", tax < 0 ? 0 : tax];
    return strTax;
}

@end
