//
//  IMainRepresentationHandler.h
//  fireApp
//
//  Created by Jesus Cagide on 2/7/15.
//  Copyright (c) 2015 cagide. All rights reserved.
//

@class MainContainer;
@protocol IRepresentationHandler;

@protocol IMainRepresentationHandler <NSObject>

- (void)setVisible:(UIViewController<IRepresentationHandler> *)controller;

- (void)dismiss:(UIViewController<IRepresentationHandler> *)controller;

@end


