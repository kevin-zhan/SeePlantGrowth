//
//  KVZPlantDiary.h
//  SeePlantGrowth
//
//  Created by kevinzhan on 16/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "MTLModel.h"

@interface KVZPlantDiary : MTLModel
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSDate *writeDate;

- (instancetype)initWithTodayContent:(NSString *)content;
@end
