//
//  KVZPlantImage.h
//  SeePlantGrowth
//
//  Created by kevinzhan on 16/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "MTLModel.h"
#import "UIKit/UIKit.h"
@interface KVZPlantImage : MTLModel
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSDate *shotDate;

- (instancetype)initWithTodayImage:(UIImage *)image;

@end
