//
//  KVZPlant.h
//  SeePlantGrowth
//
//  Created by kevinzhan on 16/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "MTLModel.h"
@class KVZPlantImage;
@class KVZPlantDiary;
@interface KVZPlant : MTLModel

@property (nonatomic, strong) NSString *plantName;
@property (nonatomic, strong) NSDate *birthday;
@property (nonatomic, strong) NSString *aboutPlant;
@property (nonatomic, copy, readonly) NSArray *plantImages;
@property (nonatomic, copy, readonly) NSArray *plantDiaries;

- (instancetype)initWithPlantName:(NSString *)name birthday:(NSDate *)birthday firstImage:(KVZPlantImage *)image description:(NSString *)description;
- (void)addPlantImage:(KVZPlantImage *)image;
- (void)addPlantDiary:(KVZPlantDiary *)diary;

@end
