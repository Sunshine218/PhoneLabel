//
//  ViewController.m
//  PhoneLabelDemo
//
//  Created by geely on 16/12/7.
//  Copyright © 2016年 abc. All rights reserved.
//

#import "ViewController.h"
#import "Phonelabel.h"

@interface ViewController ()

@property(nonatomic,strong)Phonelabel *phonelabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _phonelabel = [[Phonelabel alloc] initWithFrame:CGRectMake(20, 100, 300, 250)];
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:@"大家分开了；大13333333333会疯狂的；撒；护肤的凯撒红范德萨看附近的撒多撒谎发的86-400-650-5919啥卡拉风很大的撒范德萨范德萨多看哈范德萨积分换快点撒拉飞机了好的撒发生"];
    [_phonelabel setLinkText:attStr];
    [self.view addSubview:_phonelabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
