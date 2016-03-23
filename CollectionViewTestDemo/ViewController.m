//
//  ViewController.m
//  CollectionViewTestDemo
//
//  Created by zxy on 16/3/22.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

static NSString * const reuseIdentifier = @"CELLID";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
    flowLayout.minimumInteritemSpacing = 0;
    flowLayout.minimumLineSpacing = 0;
    flowLayout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0);
    flowLayout.itemSize = CGSizeMake([UIScreen mainScreen].bounds.size.width / 3, [UIScreen mainScreen].bounds.size.width / 3);
    self.collectionView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)configureCell:(CollectionViewCell *)cell atIndexPath:(NSIndexPath *)indexPath withURLString:(NSString *)urlString
{
    // 创建一个NSData的实例对象
//    dispatch_async(
//                   dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//                       NSData *data = [self downloadImageDataWithURLString:urlString];
//                       dispatch_async(dispatch_get_main_queue(), ^{
//                           UIImage *iamge = [UIImage imageWithData:data];
//                           if (image) {
//                               <#statements#>
//                           }
//                       })
//                   })
}
#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 32;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.layer.borderWidth = 1;
    cell.layer.borderColor = [UIColor redColor].CGColor;
    cell.SHLabel.text = [NSString stringWithFormat:@"{%ld ,%ld}",(long)indexPath.section,(long)indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"6.jpg"];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>



@end
