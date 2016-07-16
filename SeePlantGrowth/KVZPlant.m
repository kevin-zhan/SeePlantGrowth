//
//  KVZPlant.m
//  SeePlantGrowth
//
//  Created by kevinzhan on 16/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "KVZPlant.h"
@interface KVZPlant()
@property (nonatomic, copy, readwrite)NSArray *plantImages;
@property (nonatomic, copy, readwrite)NSArray *plantDiaries;
@end

@implementation KVZPlant

- (instancetype)initWithPlantName:(NSString *)name birthday:(NSDate *)birthday firstImage:(KVZPlantImage *)image description:(NSString *)description {
    self = [super init];
    if (self) {
        _plantName = name;
        _birthday = birthday;
        _aboutPlant = description;
        _plantImages = [[NSArray alloc] init];
        _plantDiaries = [[NSArray alloc] init];
        [self addPlantImage:image];
    }
    return self;
}

- (void)addPlantImage:(KVZPlantImage *)image {
    NSMutableArray *mutableImageArr = [_plantImages mutableCopy];
    [mutableImageArr addObject:image];
    _plantImages = [mutableImageArr copy];
    NSLog(@"KVZPlant: add image success!");
}

- (void)addPlantDiary:(KVZPlantDiary *)diary {
    NSMutableArray *mutableDiaryArr = [_plantDiaries mutableCopy];
    [mutableDiaryArr addObject:diary];
    _plantImages = [mutableDiaryArr copy];
    NSLog(@"KVZPlant: add image success!");
}

@end
