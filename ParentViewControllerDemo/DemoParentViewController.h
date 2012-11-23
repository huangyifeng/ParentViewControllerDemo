//
//  DemoParentViewController.h
//  ParentViewControllerDemo
//
//  Created by HuangYiFeng on 11/21/12.
//  Copyright (c) 2012 cybozu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "ScheduleViewController.h"
#import "NotificationViewController.h"
#import "MailViewController.h"
#import "ApplicationType.h"

@interface DemoParentViewController : UIViewController
{
@private
    IBOutlet UIView                      *_contentView;
    
    IBOutlet ScheduleViewController      *_scheduleController;
    IBOutlet NotificationViewController  *_notificationController;
    IBOutlet HomeViewController          *_homeController;
    IBOutlet UINavigationController      *_innerNavigationController;
    IBOutlet MailViewController          *_mailController;
    
    UIViewController                     *_currentViewController;
}

- (void)switchToApplication:(ApplicationType)appType;

- (IBAction)scheduleButtonPressed:(id)sender;
- (IBAction)notificationButtonPressed:(id)sender;
- (IBAction)homeButtonPressed:(id)sender;

//- (void)change

@end
