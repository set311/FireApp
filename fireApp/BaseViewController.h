//
//  BaseViewController.h
//  fireApp
//
//  Created by Jesus Cagide on 2/7/15.
//  Copyright (c) 2015 cagide. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IRepresentationHandler.h"
#import "IMainRepresentationHandler.h"
@interface BaseViewController : UIViewController<IRepresentationHandler>

@property(nonatomic, strong) id viewModel;
@property(nonatomic, strong) id dataModel;
@property(nonatomic, assign) id<IMainRepresentationHandler> mainRepresentationHandler;

@end
