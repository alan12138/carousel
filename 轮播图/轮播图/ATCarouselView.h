//
//  ATCarouselView.h
//  轮播图
//
//  Created by lg on 16/7/4.
//  Copyright © 2016年 at. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ATCarouselView;
@protocol ATCarouselViewDelegate <NSObject>
@optional
/**
 *  点击图片的回调事件
 */
- (void)carouselView:(ATCarouselView *)carouselView indexOfClickedImageBtn:(NSUInteger)index;
@end

@interface ATCarouselView : UIView
//传入图片数组
@property (nonatomic, copy) NSArray *images;
//pageControl颜色设置
@property (nonatomic, strong) UIColor *currentPageColor;
@property (nonatomic, strong) UIColor *pageColor;
//是否竖向滚动
@property (nonatomic, assign, getter=isScrollDorectionPortrait) BOOL scrollDorectionPortrait;

@property (weak, nonatomic) id<ATCarouselViewDelegate> delegate;
@end
