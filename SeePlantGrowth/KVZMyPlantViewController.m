//
//  ViewController.m
//  SeePlantGrowth
//
//  Created by kevinzhan on 11/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "KVZMyPlantViewController.h"
#import "Masonry.h"
#import "KVZMyPlantInfoTableViewCell.h"
#import "KVZPlant.h"
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
@interface KVZMyPlantViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *myPlants;
@end

@implementation KVZMyPlantViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"我的植物";
    UIBarButtonItem *add = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_plus"] style:UIBarButtonItemStyleDone target:self action:@selector(addPlant)];
    [self.navigationItem setRightBarButtonItem:add];
    [self p_initMainViews];
    _myPlants = [[NSMutableArray alloc] initWithCapacity:5];
    KVZPlant *plant = [[KVZPlant alloc] initWithPlantName:@"第一盆满天星" birthday:[[NSDate alloc] init] firstImage:[UIImage imageNamed:@"plant1"] description:@"我第一次认真种东西，一定要长的好好的哦！"];
    NSLog(@"plantName:%@",plant.plantName);
    [_myPlants addObject:plant];
    [_myPlants addObject:plant];
    [_myPlants addObject:plant];

}

- (void)p_initMainViews {
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource =self;
    _tableView.backgroundColor = [UIColor clearColor];
    [_tableView registerNib:[UINib nibWithNibName:@"KVZMyPlantInfoTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:[KVZMyPlantInfoTableViewCell identify]];
    [self.view addSubview:_tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_myPlants count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id cell;
    cell = [_tableView dequeueReusableCellWithIdentifier:[KVZMyPlantInfoTableViewCell identify] forIndexPath:indexPath];
    NSLog(@"cell:%@",cell);
    [(KVZMyPlantInfoTableViewCell *)cell setItem:_myPlants[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [KVZMyPlantInfoTableViewCell heightWithItem:_myPlants[indexPath.row]];
}

- (void)addPlant {
    NSLog(@"添加植物");
}
@end
