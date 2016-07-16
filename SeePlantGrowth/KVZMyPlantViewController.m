//
//  ViewController.m
//  SeePlantGrowth
//
//  Created by kevinzhan on 11/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "KVZMyPlantViewController.h"
#import "Masonry.h"
@interface KVZMyPlantViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation KVZMyPlantViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"我的植物";
    UIBarButtonItem *add = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_plus"] style:UIBarButtonItemStyleDone target:self action:@selector(addPlant)];
    [self.navigationItem setRightBarButtonItem:add];
    [self p_initMainViews];
}

- (void)p_initMainViews {
    _tableView = [[UITableView alloc] init];
    _tableView.delegate = self;
    _tableView.dataSource =self;
    _tableView.backgroundColor = [UIColor clearColor];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30.0f;
}

- (void)addPlant {
    NSLog(@"添加植物");
}
@end
