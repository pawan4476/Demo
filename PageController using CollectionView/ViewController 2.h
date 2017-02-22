//
//  ViewController 2.h
//  PageController using CollectionView
//
//  Created by Nagam Pawan on 9/23/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageContentViewController.h"

@interface ViewController_2 : UIViewController<UIPageViewControllerDataSource>
@property (strong, nonatomic) NSArray *getImages;
@property (strong, nonatomic) NSArray *pageImages;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitle;
- (IBAction)startAgain:(id)sender;

@end
