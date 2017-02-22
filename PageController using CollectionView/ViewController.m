//
//  ViewController.m
//  PageController using CollectionView
//
//  Created by Nagam Pawan on 9/23/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = false;
//    imagesArray = @[@{@"Images" : @"1.jpg", @"SubImages" : @[@{@"Images" : @[@"2.jpg", @"3.jpg", @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", @"8.jpg"]}]},
//    @{@"Images" : @"9.jpg", @"SubImages" : @[@{@"Images" : @[@"10.jpg", @"11.jpg", @"12.jpg", @"13.jpg", @"14.jpg", @"15.jpg"
//                                                             ]}]},
//    @{@"Images" : @"16.jpg", @"SubImages" : @[@{@"Images" : @[@"17.jpg", @"18.jpg", @"19,jpg", @"", @"20.jpg", @"21.jpg", @"22.jpg", @"23.jpg", @"24.jpg", @"25.jpg", @"26.jpg"]}]},
//                    @{@"Images" : @"30.jpg", @"SubImages" : @[@{@"Images" : @[@"31.jpg", @"32.jpg", @"33.jpg", @"34.jpg", @"35.jpg", @"36.jpg", @"37.jpg"]}]},
//                    
//    ];
//    
    imagesArray = @[@{@"Images" : @"1.jpg", @"SubImages" : @[@"2.jpg", @"3.jpg", @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", @"8.jpg"]},
                    @{@"Images" : @"9.jpg", @"SubImages" : @[@"10.jpg", @"11.jpg", @"12.jpg", @"13.jpg", @"14.jpg", @"15.jpg"]},
                    @{@"Images" : @"16.jpg", @"SubImages" : @[@"17.jpg", @"18.jpg", @"19,jpg",@"20.jpg", @"21.jpg", @"22.jpg", @"23.jpg", @"24.jpg", @"25.jpg", @"26.jpg"]},
                    @{@"Images" : @"30.jpg", @"SubImages" : @[@"31.jpg", @"32.jpg", @"33.jpg", @"34.jpg", @"35.jpg", @"36.jpg", @"37.jpg"]},
                    @{@"Images" : @"38.jpg", @"SubImages" : @[@"39.jpg", @"40.jpg", @"41.jpg", @"42.jpg", @"42.jpg", @"43.jpg", @"44.jpg", @"45.jpg", @"46.jpg", @"47.jpg", @"48.jpg"]},
                    @{@"Images" : @"49.jpg", @"SubImages" : @[@"50.jpg", @"51.jpg", @"52.jpg", @"53.jpg", @"54.jpg", @"55.jpg", @"56.jpg"]},
                    
                    ];
    

   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return imagesArray.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    CollectionViewCell *cell1 = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell1.image1.image = [UIImage imageNamed:[imagesArray objectAtIndex:indexPath.item][@"Images"]];
    return cell1;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *path = [[self.collectionView indexPathsForSelectedItems]objectAtIndex:0];
    ViewController_2 *vc = [segue destinationViewController];
    vc.getImages = imagesArray[path.item][@"SubImages"];
   // vc.pageTitle = imagesArray[path.item][@"Images"];
}

@end
