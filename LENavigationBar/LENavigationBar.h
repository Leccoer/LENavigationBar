//
//  LENavigationBar.h
//  LENavigationBarDemo
//
//  Created by lecco on 2018/11/2.
//  Copyright © 2018 lecco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LENavigationBarConfig.h"


NS_ASSUME_NONNULL_BEGIN

@interface LENavigationBar : UIView

//导航类型
@property (assign, nonatomic) kLENavigationBarType navigationBarType;

//过度比例 1<->0 : default<->clear
@property (assign, nonatomic) CGFloat alphaAnimationProgress;

@property (weak, nonatomic) IBOutlet UIButton *backButton;

@property (weak, nonatomic) IBOutlet UIButton *closeButton;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UIButton *rightButton;

@property (weak, nonatomic) IBOutlet UIProgressView *progressView;

//app初始化之前使用，配置项
+ (void)setConfig:(LENavigationBarConfig *)config forNavigationBarType:(kLENavigationBarType)type;

- (id)init DEPRECATED_MSG_ATTRIBUTE("use le_initFromXib instead");

+ (instancetype)le_initFromXib;

- (id)initWithFrame:(CGRect)frame DEPRECATED_MSG_ATTRIBUTE("use le_initFromXibWithFrame: instead");

+ (instancetype)le_initFromXibWithFrame:(CGRect)frame;


@end

NS_ASSUME_NONNULL_END
