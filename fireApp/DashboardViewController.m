//
//  DashboardViewController.m
//  fireApp
//
//  Created by Jesus Cagide on 2/7/15.
//  Copyright (c) 2015 cagide. All rights reserved.
//

#import "DashboardViewController.h"
#import <CTAssetsPickerController.h>

@interface DashboardViewController ()<CTAssetsPickerControllerDelegate>

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)cmdAddPhoto:(id)sender
{
    CTAssetsPickerController *picker = [[CTAssetsPickerController alloc] init];
    picker.delegate = self;
    picker.assetsFilter = [ALAssetsFilter allPhotos];
    picker.title = @"Pick photos";
    [self presentViewController:picker animated:YES completion:nil];
}


- (void)assetsPickerController:(CTAssetsPickerController *)picker didFinishPickingAssets:(NSArray *)assets
{

}

- (BOOL)assetsPickerController:(CTAssetsPickerController *)picker shouldSelectAsset:(ALAsset *)asset
{
    return (picker.selectedAssets.count < 5);
}

@end
