//
//  SpaceImageViewController.m
//  Outter Space
//
//  Created by Jude Murphy on 2/24/15.
//  Copyright (c) 2015 Spark Apps, LLC. All rights reserved.
//

#import "SpaceImageViewController.h"

@interface SpaceImageViewController ()

@end

@implementation SpaceImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _imageView = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"Jupiter.jpg"]];
    [[self scrollView] setContentSize: [self imageView].frame.size];
    [[self scrollView] addSubview: [self imageView]];
    [[self scrollView] setDelegate: self];
    [[self scrollView] setMaximumZoomScale: 2.0];
    [[self scrollView] setMinimumZoomScale: 0.5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return [self imageView];
}

@end
