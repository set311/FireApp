//
//  AppDelegate.m
//  fireApp
//
//  Created by Jesus Cagide on 2/7/15.
//  Copyright (c) 2015 cagide. All rights reserved.
//

#import "AppDelegate.h"
#import <Firebase/Firebase.h>
#import <FacebookSDK/FacebookSDK.h>
#import "ViewController.h"
#import "MainNavigaionController.h"
#import "AlbumViewController.h"
#import "LoginViewController.h"
#import "DashboardViewController.h"


@interface AppDelegate ()

@property(nonatomic, strong)ViewController *viewController;

@property(nonatomic, strong)LoginViewController *loginViewController;

@property(nonatomic, strong)DashboardViewController *dashBoardViewController;
@property(nonatomic, strong) AlbumViewController *albumViewController;

@property(nonatomic, strong) MainNavigaionController *navigationContrtoller;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.viewController = [ViewController new];
    
    self.dashBoardViewController = [DashboardViewController new];
    self.loginViewController = [LoginViewController new];
    self.albumViewController = [AlbumViewController new];
    
    self.navigationContrtoller = [[MainNavigaionController alloc] initWithRootViewController:self.loginViewController];
    
    
    [self.loginViewController setMainRepresentationHandler:self.navigationContrtoller];

    
    //[self.viewController.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.window setRootViewController:self.navigationContrtoller];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

// notify firebase that user has logged in
- (void)authToFirebase
{
    NSString *fbAccessToken = [[[FBSession activeSession] accessTokenData] accessToken];
    // if we have an access token, authenticate to firebase
    if (fbAccessToken) {
        Firebase *ref = [[Firebase alloc] initWithUrl:@"https://flickering-heat-1547.firebaseapp.com"];
        
        [ref authWithOAuthProvider:@"facebook" token:fbAccessToken withCompletionBlock:^(NSError *error, FAuthData *authData) {
            if (error) {
                NSLog(@"Error on login %@", error);
            } else if (authData) {
                self.displayName_ = authData.providerData[@"displayName"];
                NSLog(@"Logged In: %@", self.displayName_);
            } else {
                NSLog(@"Logged out");
            }
        }];
    } else {
        NSLog(@"No access token provided.");
    }
}

// notify firebase that user has logged out
- (void)deauthToFirebase
{
    if (self.displayName_) {
        Firebase *positionRef = [[[Firebase alloc] initWithUrl:@"https://flickering-heat-1547.firebaseapp.com"] childByAppendingPath:self.displayName_];
        [positionRef removeValueWithCompletionBlock:^(NSError *error, Firebase *ref) {
            self.displayName_ = nil;
            [positionRef unauth];
        }];
    }
}

@end
