//
//  ViewController.m
//  HHMButtonDemo
//
//  Created by Hehuimin on 2017/9/6.
//  Copyright © 2017年 haoshiqi. All rights reserved.
//

#import "ViewController.h"
#import "HHMButton/HHMButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *titles = @[@"客服", @"收藏", @"购物车"];
    NSArray *imagesNormal = @[@"icon_message_selected", @"icon_collect_normal", @"icon_shopCart_selected"];
    
    for (int i = 0; i < titles.count; i++) {
        CGFloat width = CGRectGetWidth(self.view.frame) / titles.count;
        HHMButton *button = [HHMButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(i * width, 100, width, 49);
        button.titleLabel.font = [UIFont systemFontOfSize:10];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitle:titles[i] forState:UIControlStateNormal];
        [button setImage:[[UIImage imageNamed:imagesNormal[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        button.tag = i + 1;
        [self.view addSubview:button];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
