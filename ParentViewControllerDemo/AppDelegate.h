//
//  AppDelegate.h
//  ParentViewControllerDemo
//
//  Created by HuangYiFeng on 11/23/12.
//  Copyright (c) 2012 cybozu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class DemoParentViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) DemoParentViewController  *demoController;

+ (AppDelegate *)sharedAppDelegate;
- (DemoParentViewController *)sharedRootViewController;

@end
