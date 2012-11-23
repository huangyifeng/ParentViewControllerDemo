//
//  HomeViewController.m
//  ParentViewControllerDemo
//
//  Created by HuangYiFeng on 11/22/12.
//  Copyright (c) 2012 cybozu. All rights reserved.
//

#import "HomeViewController.h"
#import "DemoParentViewController.h"
#import "AppDelegate.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (void)letsGoToMail:(id)sender
{
    [[[AppDelegate sharedAppDelegate] sharedRootViewController] switchToApplication:ApplicationTypeMail];
}

@end
