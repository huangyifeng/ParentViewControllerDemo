//
//  DemoParentViewController.m
//  ParentViewControllerDemo
//
//  Created by HuangYiFeng on 11/21/12.
//  Copyright (c) 2012 cybozu. All rights reserved.
//

#import "DemoParentViewController.h"

@interface DemoParentViewController ()

- (void)switchToController:(UIViewController *)controller;

@end

@implementation DemoParentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addChildViewController:_innerNavigationController];
    [_innerNavigationController didMoveToParentViewController:self];
//    [self addChildViewController:_notificationController];
//    [self addChildViewController:_homeController];
    
    [_contentView addSubview:_innerNavigationController.view];
    [self switchToController:_scheduleController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (void)scheduleButtonPressed:(id)sender
{
    [self switchToController:_scheduleController];
}

- (void)notificationButtonPressed:(id)sender
{
    [self switchToController:_notificationController];
}

- (void)homeButtonPressed:(id)sender
{
    [self switchToController:_homeController];
}

#pragma mark - public 

- (void)switchToApplication:(ApplicationType)appType
{
    UIViewController *targetController = nil;
    switch (appType)
    {
        case ApplicationTypeHome:
            targetController = _homeController;
            break;
        case ApplicationTypeSchedule:
            targetController = _scheduleController;
            break;
        case ApplicationTypeNotification:
            targetController = _notificationController;
            break;
        case ApplicationTypeMail:
            targetController = _mailController;
            break;
        default:
            break;
    }
    [self switchToController:targetController];
}

#pragma mark - private

- (void)switchToController:(UIViewController *)controller
{
    if (_currentViewController != controller)
    {
        UIViewAnimationOptions options = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionTransitionFlipFromRight;
        NSArray *controllerStack = [NSArray arrayWithObject:controller];
        [_innerNavigationController setViewControllers:controllerStack];
        [UIView transitionWithView:_contentView
                          duration:0.5
                           options:options
                        animations:nil
                        completion:^(BOOL finished) {
                            _currentViewController = controller;
                        }];
    }
}


@end
