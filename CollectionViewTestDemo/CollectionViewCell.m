//
//  CollectionViewCell.m
//  CollectionViewTestDemo
//
//  Created by zxy on 16/3/22.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import "CollectionViewCell.h"
@interface CollectionViewCell()


@end
@implementation CollectionViewCell
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}
@end
