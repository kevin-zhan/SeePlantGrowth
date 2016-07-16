//
//  KVZMyPlantInfoTableViewCell.m
//  SeePlantGrowth
//
//  Created by kevinzhan on 16/7/16.
//  Copyright © 2016年 kevinzhan. All rights reserved.
//

#import "KVZMyPlantInfoTableViewCell.h"
#import "Masonry.h"
#import "KVZPlant.h"
@interface KVZMyPlantInfoTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *plantName;
@property (weak, nonatomic) IBOutlet UILabel *plantBirthday;
@property (weak, nonatomic) IBOutlet UILabel *plantDescription;
@property (weak, nonatomic) IBOutlet UIImageView *plantMainImage;

@end

@implementation KVZMyPlantInfoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    

}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor blackColor];
        [self p_layout];
    }
    return self;
}

+ (CGFloat)heightWithItem:(KVZPlant *)item {
    return 420.0f;
}


+ (NSString *)identify {
    return @"KVZMyPlantInfoTableViewCell";
}
- (void)setItem:(KVZPlant *)item {
    _plantName.text = item.plantName;
    _plantBirthday.text = [NSString stringWithFormat:@"生日：%@",item.birthday];
    _plantDescription.text = item.aboutPlant;
    [_plantMainImage setImage:item.firstImage];
}

- (void)p_layout {
    _plantName.text = @"name";
}
@end
