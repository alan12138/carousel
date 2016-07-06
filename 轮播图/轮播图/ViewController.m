//
//  ViewController.m
//  轮播图
//
//  Created by lg on 16/7/4.
//  Copyright © 2016年 at. All rights reserved.
//

#import "ViewController.h"
#import "ATCarouselView.h"

@interface ViewController ()<ATCarouselViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ATCarouselView *carousel = [[ATCarouselView alloc] initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 300)];
    carousel.delegate = self;
    //    carousel.scrollDorectionPortrait = YES;
    carousel.images = @[
                        [UIImage imageNamed:@"0"],
                        [UIImage imageNamed:@"1"],
                        [UIImage imageNamed:@"2"],
                        [UIImage imageNamed:@"3"],
                        [UIImage imageNamed:@"4"]
                        ];
    carousel.currentPageColor = [UIColor orangeColor];
    carousel.pageColor = [UIColor grayColor];
    [self.view addSubview:carousel];

}
- (void)carouselView:(ATCarouselView *)carouselView indexOfClickedImageBtn:(NSUInteger )index {
    NSLog(@"点击了第%ld张图片",index);
}
@end
