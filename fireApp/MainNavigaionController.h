//
//  MainNavigaionController.h
//  fireApp
//
//  Created by Jesus Cagide on 2/7/15.
//  Copyright (c) 2015 cagide. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IMainRepresentationHandler.h"

#import "AlbumViewController.h"
#import "LoginViewController.h"
#import "DashboardViewController.h"

@interface MainNavigaionController : UINavigationController<IMainRepresentationHandler>


@property(nonatomic, strong)LoginViewController *loginViewController;

@property(nonatomic, strong)DashboardViewController *dashBoardViewController;
@property(nonatomic, strong) AlbumViewController *albumViewController;

@end
