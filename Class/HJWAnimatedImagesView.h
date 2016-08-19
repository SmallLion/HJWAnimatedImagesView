//
//  HJWAnimatedImagesView.h
//  HJWAnimatedImagesView
//
//  Created by Lion_Lemon on 16/8/19.
//  Copyright © 2016年 Lion_Lemon. All rights reserved.
//

#import <UIKit/UIKit.h>

#define hjw_AnimatedImagesViewDefaultTimePerImage 20.0f

@class HJWAnimatedImagesView;
@protocol hjw_AnimatedImagesViewDelegate <NSObject>

- (NSUInteger)animatedImagesNumberOfImages:(HJWAnimatedImagesView *)animatedImagesView;
- (UIImage *)animatedImagesView:(HJWAnimatedImagesView *)animatedImagesView imageAtIndex:(NSUInteger)index;

@end

@interface HJWAnimatedImagesView : UIView

@property(nonatomic, assign) id<hjw_AnimatedImagesViewDelegate> delegate;

@property(nonatomic, assign) NSTimeInterval timePerImage;


- (void)startAnimating;
- (void)stopAnimating;

- (void)reloadData;

@end
