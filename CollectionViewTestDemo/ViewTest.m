//
//  ViewTest.m
//  CollectionViewTestDemo
//
//  Created by zxy on 16/3/23.
//  Copyright © 2016年 Chenshaohua. All rights reserved.
//

#import "ViewTest.h"
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@implementation ViewTest

- (void)af_decompressedImageFromJPEGDataWithCallback:(JPEGWasDecompressedCallback)callback
{
    uint8_t character;
//    [self ]
    CGDataProviderRef dataProvider = CGDataProviderCreateWithCFData((__bridge CFDataRef)self);
    CGImageRef image = CGImageCreateWithJPEGDataProvider(dataProvider, NULL, NO, kCGRenderingIntentDefault);
    CGDataProviderRelease(dataProvider);
    size_t width = CGImageGetWidth(image);
    size_t height = CGImageGetHeight(image);
//    size_t bytesPerRow = NSRoundUp(width * 4,16);

    AVAudioPlayer *play;
    MPMusicPlayerController *vc;
}

@end
