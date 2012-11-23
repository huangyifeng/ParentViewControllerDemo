//
//  ScheduleViewController.m
//  ParentViewControllerDemo
//
//  Created by HuangYiFeng on 11/22/12.
//  Copyright (c) 2012 cybozu. All rights reserved.
//

#import "ScheduleViewController.h"

@interface ScheduleViewController ()

@end

@implementation ScheduleViewController

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
    
    self.definesPresentationContext = YES;
//    self.modalPresentationStyle = UIModalPresentationFullScreen;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (void)pushNewController:(id)sender
{
    [self.navigationController pushViewController:_newViewController animated:YES];
}

- (void)popNewController:(id)sender
{
    [self presentViewController:_newViewController animated:YES completion:nil];
}

@end
