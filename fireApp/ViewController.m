//
//  ViewController.m
//  fireApp
//
//  Created by Jesus Cagide on 2/7/15.
//  Copyright (c) 2015 cagide. All rights reserved.
//

#import "ViewController.h"
#import <Firebase/Firebase.h>
#import <FacebookSDK/FacebookSDK.h>
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadFacebookView];
}

// load the facebook login button
- (void)loadFacebookView
{
    FBLoginView *loginView = [[FBLoginView alloc] init];
    // position the login button
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    // create a button that's the width of the screen (with 4 padding) and has a height of 50
    // move the button to the bottom of the screen (screen height - button height (50))
    loginView.frame = CGRectMake(4, screenRect.size.height-50, screenRect.size.width-(4*2), 50);
    
    // set the view controller as the delegate
    loginView.delegate = self;
    [self.view addSubview:loginView];
}

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView
{
    NSLog(@"FB: logged out");
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate deauthToFirebase];
}

@end
