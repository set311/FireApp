//
//  MainNavigaionController.m
//  fireApp
//
//  Created by Jesus Cagide on 2/7/15.
//  Copyright (c) 2015 cagide. All rights reserved.
//

#import "MainNavigaionController.h"
#import "IRepresentationHandler.h"



@interface MainNavigaionController()<UINavigationControllerDelegate>


@end

@implementation MainNavigaionController

-(id)initWithRootViewController:(UIViewController *)rootViewController
{
    if(self = [super initWithRootViewController:rootViewController])
    {
        [self setDelegate:self];
    }
    return self;
}

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                  animationControllerForOperation:(UINavigationControllerOperation)operation
                                               fromViewController:(UIViewController*)fromVC
                                                 toViewController:(UIViewController*)toVC
{
    return nil;
}

- (void)dismiss:(UIViewController <IRepresentationHandler> *)controller {

        [self popViewControllerAnimated: YES];
}

- (void)setVisible:(UIViewController<IRepresentationHandler> *)controller {
           if( [controller isKindOfClass:[LoginViewController class]])
            [self pushViewController:self.albumViewController animated:YES];
        
            if( [controller isKindOfClass:[AlbumViewController class]])
                [self pushViewController:self.dashBoardViewController animated:YES];
}

@end
