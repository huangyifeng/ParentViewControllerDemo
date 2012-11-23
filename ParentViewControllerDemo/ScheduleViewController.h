//
//  ScheduleViewController.h
//  ParentViewControllerDemo
//
//  Created by HuangYiFeng on 11/22/12.
//  Copyright (c) 2012 cybozu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewViewController.h"


@interface ScheduleViewController : UIViewController
{
@private
    IBOutlet NewViewController  *_newViewController;
}

- (IBAction)pushNewController:(id)sender;
- (IBAction)popNewController:(id)sender;


@end
