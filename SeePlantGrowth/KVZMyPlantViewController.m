//
//  ViewController.m
//  SeePlantGrowth
//
//  Created by kevinzhan on 11/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "KVZMyPlantViewController.h"
@interface KVZMyPlantViewController ()

@end

@implementation KVZMyPlantViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"我的植物";
    UIBarButtonItem *add = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_plus"] style:UIBarButtonItemStyleDone target:self action:@selector(addPlant)];
    [self.navigationItem setRightBarButtonItem:add];
    
}

- (void)addPlant {
    NSLog(@"添加植物");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
