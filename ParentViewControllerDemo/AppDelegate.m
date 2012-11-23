//
//  AppDelegate.m
//  ParentViewControllerDemo
//
//  Created by HuangYiFeng on 11/23/12.
//  Copyright (c) 2012 cybozu. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "DemoParentViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //    [Crashlytics startWithAPIKey:@"29c4a79fa23c8077c065d1316fcd7f3c6ca91494"];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    //    self.window.rootViewController = self.viewController;
    
    self.demoController = [[DemoParentViewController alloc] initWithNibName:@"DemoParentViewController" bundle:nil];
    self.window.rootViewController = self.demoController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark - public

+ (AppDelegate *)sharedAppDelegate
{
    return [[UIApplication sharedApplication] delegate];
}

- (DemoParentViewController *)sharedRootViewController
{
    return self.demoController;
}


@end
