//
//  PageContentViewController.h
//  PageController using CollectionView
//
//  Created by Nagam Pawan on 9/23/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;



@end
