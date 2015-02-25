//
//  SpaceImageViewController.h
//  Outter Space
//
//  Created by Jude Murphy on 2/24/15.
//  Copyright (c) 2015 Spark Apps, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OuterSpaceObject.h"

@interface SpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) OuterSpaceObject *spaceObject;

@end
