//
//  AlbumViewController.m
//  fireApp
//
//  Created by Jesus Cagide on 2/7/15.
//  Copyright (c) 2015 cagide. All rights reserved.
//

#import "AlbumViewController.h"

@interface AlbumViewController ()

@end

@implementation AlbumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *createButton = [[UIBarButtonItem alloc]
                                      initWithTitle:@"Create"
                                      style:UIBarButtonItemStylePlain
                                      target:self
                                      action:@selector(cmdCreateAlbum)];
    self.navigationItem.rightBarButtonItem = createButton;
    //[self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
}

-(void)cmdCreateAlbum
{
     [self.mainRepresentationHandler setVisible:self];
}

@end
