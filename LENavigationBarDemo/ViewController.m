//
//  ViewController.m
//  LENavigationBarDemo
//
//  Created by lecco on 2018/11/2.
//  Copyright © 2018 lecco. All rights reserved.
//

#import "ViewController.h"
#import "LENavigationBar.h"

@interface ViewController ()
{
    LENavigationBar *navigationBar;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    navigationBar = [LENavigationBar le_initFromXibWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 64+20)];
    [self.view addSubview:navigationBar];
//    self.view.backgroundColor = [UIColor redColor];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        for (int i = 0; i < 100; i++) {
//            navigationBar.alphaAnimationProgress = 100-i/100.0;
//        }
//    });
    
    
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)sliderValueChanged:(UISlider *)sender {
    navigationBar.alphaAnimationProgress = sender.value;
}

@end
