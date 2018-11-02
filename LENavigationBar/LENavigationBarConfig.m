//
//  LENavigationBarConfig.m
//  LENavigationBarDemo
//
//  Created by lecco on 2018/11/2.
//  Copyright © 2018 lecco. All rights reserved.
//

#import "LENavigationBarConfig.h"

@implementation LENavigationBarConfig

- (id)initWithNavigationBarType:(kLENavigationBarType)navigationBar{
    if (self = [super init]) {
        
        switch (navigationBar) {
            case kLENavigationBarTypeDefault:
            {
                self.barBackGroundColor = [UIColor whiteColor];
                self.titleLabelAttributes = @{NSFontAttributeName:[UIFont fontWithName:@"PingFangSC-Regular" size:18],NSForegroundColorAttributeName:[UIColor colorWithRed:41/255.0 green:43/255.0 blue:47/255.0 alpha:1]};
                self.rightLabelAttributes = @{NSFontAttributeName:[UIFont fontWithName:@"PingFangSC-Regular" size:14],NSForegroundColorAttributeName:[UIColor colorWithRed:71/255.0 green:75/255.0 blue:82/255.0 alpha:1]};
                self.backButtonImage = [UIImage imageNamed:@"ws_nav_back_black"];
                self.closeButtonImage = [UIImage imageNamed:@"ws_nav_close_black"];
                self.trackTintColor = [UIColor clearColor];
                self.progressTintColor = [UIColor colorWithRed:46/255.0 green:113/255.0 blue:229/255.0 alpha:1];
                self.trackImage = nil;
                self.progressImage = nil;
            }
                break;
            case kLENavigationBarTypeClear:
            {
                self.barBackGroundColor = [UIColor clearColor];
                self.titleLabelAttributes = @{NSFontAttributeName:[UIFont fontWithName:@"PingFangSC-Regular" size:18],NSForegroundColorAttributeName:[UIColor whiteColor]};
                self.rightLabelAttributes = @{NSFontAttributeName:[UIFont fontWithName:@"PingFangSC-Regular" size:14],NSForegroundColorAttributeName:[UIColor whiteColor]};
                self.backButtonImage = [UIImage imageNamed:@"ws_nav_back_white"];
                self.closeButtonImage = [UIImage imageNamed:@"ws_nav_close_white"];
                self.trackTintColor = [UIColor clearColor];
                self.progressTintColor = [UIColor colorWithRed:46/255.0 green:113/255.0 blue:229/255.0 alpha:1];
                self.trackImage = nil;
                self.progressImage = nil;
            }
                break;
        } 
    }
    return self;
}

- (void)setTitleLabelAttributes:(NSDictionary *)titleLabelAttributes {
    NSAssert(titleLabelAttributes != nil, @"titleLabelAttributes 不能为 nil");
    NSAssert(titleLabelAttributes[NSForegroundColorAttributeName] != nil, @"titleLabelAttributes[NSForegroundColorAttributeName] 不能为 nil");
    NSAssert(titleLabelAttributes[NSFontAttributeName] != nil, @"titleLabelAttributes[NSFontAttributeName] 不能为 nil");
    _titleLabelAttributes = titleLabelAttributes;
}

- (void)setRightLabelAttributes:(NSDictionary *)rightLabelAttributes {
    NSAssert(rightLabelAttributes != nil, @"titleLabelAttributes 不能为 nil");
    NSAssert(rightLabelAttributes[NSForegroundColorAttributeName] != nil, @"rightLabelAttributes[NSForegroundColorAttributeName] 不能为 nil");
    NSAssert(rightLabelAttributes[NSFontAttributeName] != nil, @"rightLabelAttributes[NSFontAttributeName] 不能为 nil");
    _rightLabelAttributes = rightLabelAttributes;
}


@end
