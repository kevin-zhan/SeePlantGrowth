//
//  KVZMyPlantInfoTableViewCell.h
//  SeePlantGrowth
//
//  Created by kevinzhan on 16/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class KVZPlant;
@interface KVZMyPlantInfoTableViewCell : UITableViewCell
- (void)setItem:(KVZPlant *)item;
+ (NSString *)identify;
+ (CGFloat)heightWithItem:(KVZPlant *)item;
@end
