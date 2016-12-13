//
//  PhotoViewController.m
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.view.frame = self.view.frame;
  self.view.backgroundColor = [UIColor cyanColor];
  self.title = @"Cute Cat Animated Detail";
  
  UIImageView *cuteCatAnimatedImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:self.imageFileName]];
  [cuteCatAnimatedImage setContentMode:UIViewContentModeScaleAspectFit];
  cuteCatAnimatedImage.frame = self.view.frame;
  [self.view addSubview:cuteCatAnimatedImage];
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

@end
