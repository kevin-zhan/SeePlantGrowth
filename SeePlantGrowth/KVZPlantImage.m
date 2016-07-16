//
//  KVZPlantImage.m
//  SeePlantGrowth
//
//  Created by kevinzhan on 16/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "KVZPlantImage.h"

@implementation KVZPlantImage

- (instancetype)initWithTodayImage:(UIImage *)image {
    self = [super init];
    if (self) {
        _image = image;
        _shotDate = [[NSDate alloc] init];
        
    }
    return self;
}

@end
