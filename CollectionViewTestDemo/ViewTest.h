//
//  ViewTest.h
//  CollectionViewTestDemo
//
//  Created by zxy on 16/3/23.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^JPEGWasDecompressedCallback)(UIImage *decompressedImage);
@interface ViewTest : UIView

- (void)af_decompressedImageFromJPEGDataWithCallback:(JPEGWasDecompressedCallback)callback;


@end
