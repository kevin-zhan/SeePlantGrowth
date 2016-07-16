//
//  KVZPlantDiary.m
//  SeePlantGrowth
//
//  Created by kevinzhan on 16/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "KVZPlantDiary.h"

@implementation KVZPlantDiary

- (instancetype)initWithTodayContent:(NSString *)content {
    self = [super init];
    if (self) {
        _content = content;
        _writeDate = [[NSDate alloc] init];
    }
    return self;
}
@end
