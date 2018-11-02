//
//  LENavigationBarConfig.h
//  LENavigationBarDemo
//
//  Created by lecco on 2018/11/2.
//  Copyright © 2018 lecco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, kLENavigationBarType) {
    kLENavigationBarTypeDefault,
    kLENavigationBarTypeClear
};

NS_ASSUME_NONNULL_BEGIN

@interface LENavigationBarConfig : NSObject

- (id)initWithNavigationBarType:(kLENavigationBarType)navigationBar;

//默认背景色
@property(nonatomic, strong,nullable) UIColor *barBackGroundColor;

@property (strong, nonatomic,nullable) NSDictionary *titleLabelAttributes;

@property (strong, nonatomic,nullable) NSDictionary *rightLabelAttributes;

@property (strong, nonatomic) UIImage *backButtonImage;

@property (strong, nonatomic,nullable) UIImage *closeButtonImage;

@property(nonatomic, strong, nullable) UIColor *progressTintColor;

@property(nonatomic, strong, nullable) UIColor *trackTintColor;

@property(nonatomic, strong, nullable) UIImage *progressImage;

@property(nonatomic, strong, nullable) UIImage *trackImage;




@end

NS_ASSUME_NONNULL_END
