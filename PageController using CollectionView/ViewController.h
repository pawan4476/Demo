//
//  ViewController.h
//  PageController using CollectionView
//
//  Created by Nagam Pawan on 9/23/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"
#import "ViewController 2.h"

@interface ViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>{
    NSArray *imagesArray;
}
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;


@end

