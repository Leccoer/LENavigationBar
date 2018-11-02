//
//  LENavigationBar.m
//  LENavigationBarDemo
//
//  Created by lecco on 2018/11/2.
//  Copyright © 2018 lecco. All rights reserved.
//

#import "LENavigationBar.h"

static NSMutableDictionary *confiDictionary;

@implementation LENavigationBar

+ (void)setConfig:(LENavigationBarConfig *)config forNavigationBarType:(kLENavigationBarType)type{
    NSAssert(config != nil, @"config can not be nil!");
    if (!confiDictionary) {
        confiDictionary = [NSMutableDictionary dictionaryWithCapacity:2];
    }
    [confiDictionary setObject:config forKey:@(type)];
}

+ (instancetype)le_initFromXib {
    NSAssert(confiDictionary != nil, @"config can not be nil!");
    LENavigationBar *object = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self.class) owner:self options:nil] lastObject];
    object.navigationBarType = kLENavigationBarTypeDefault;
    return object;
}

- (void)setNavigationBarType:(kLENavigationBarType)navigationBarType {
    if (self.navigationBarType == navigationBarType) {
        return;
    }
    _navigationBarType = navigationBarType;
    LENavigationBarConfig *config = confiDictionary[@(navigationBarType)];
    NSAssert(config != nil, @"config can not be nil!");
    self.backgroundColor = config.barBackGroundColor;
    [self.closeButton setImage:config.closeButtonImage forState:UIControlStateNormal];
    [self.backButton setImage:config.backButtonImage forState:UIControlStateNormal];
    
    self.titleLabel.textColor = config.titleLabelAttributes[NSForegroundColorAttributeName];
    self.titleLabel.font = config.titleLabelAttributes[NSFontAttributeName];
    [self.rightButton setTitleColor:config.rightLabelAttributes[NSForegroundColorAttributeName] forState:UIControlStateNormal];
    self.rightButton.titleLabel.font = config.rightLabelAttributes[NSFontAttributeName];
    
    self.progressView.progressTintColor = config.progressTintColor;
    self.progressView.trackTintColor = config.trackTintColor;
    self.progressView.progressImage = config.progressImage;
    self.progressView.trackImage = config.trackImage;
}

- (void)setAlphaAnimationProgress:(CGFloat)alphaAnimationProgress {
    _alphaAnimationProgress = alphaAnimationProgress;
    NSLog(@"%f",alphaAnimationProgress);
    if (alphaAnimationProgress < 0.2) {
         [self setNavigationBarType:kLENavigationBarTypeClear];
         self.alpha = 1-alphaAnimationProgress;
    } else {
        [self setNavigationBarType:kLENavigationBarTypeDefault];
        self.alpha = alphaAnimationProgress;
    }
}


+ (instancetype)le_initFromXibWithFrame:(CGRect)frame {
    LENavigationBar *object = [self le_initFromXib];
    object.frame = frame;
    return object;
}

- (id)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

@end
