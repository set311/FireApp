//
//  AppDelegate.h
//  fireApp
//
//  Created by Jesus Cagide on 2/7/15.
//  Copyright (c) 2015 cagide. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *displayName_;

- (void)authToFirebase;
- (void)deauthToFirebase;

@end

