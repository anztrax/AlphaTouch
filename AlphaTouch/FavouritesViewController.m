//
//  FavouritesViewController.m
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import "FavouritesViewController.h"
#import "ProfileViewController.h"

@interface FavouritesViewController ()

@end

@implementation FavouritesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.view.backgroundColor = [UIColor redColor];
  
  UIButton *cuteCatButton = [UIButton buttonWithType:UIButtonTypeCustom];
  [cuteCatButton setImage:[UIImage imageNamed:@"cuteCatAnimated.gif"] forState:UIControlStateNormal];
  [cuteCatButton setImage:[UIImage imageNamed:@"cuteCatAnimated.gif"] forState:UIControlStateHighlighted];
  [cuteCatButton setFrame:CGRectMake(100, 100, 100, 100)];
  [self.view addSubview:cuteCatButton];
  [cuteCatButton
   addTarget:self
   action:@selector(showZoomedPicture:)
   forControlEvents:UIControlEventTouchUpInside
   ];
  UIButton *zoomedButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [zoomedButton setTitle:@"show Profile" forState:UIControlStateNormal];
  zoomedButton.frame = CGRectMake(100, 200, 200, 44);
  [zoomedButton
   addTarget:self
   action:@selector(showProfile:)
   forControlEvents:UIControlEventTouchUpInside
   ];
  [self.view addSubview:zoomedButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showProfile:(UIButton *)sender{
  ProfileViewController *profileViewController = [[ProfileViewController alloc]init];
  [self.navigationController
   pushViewController:profileViewController
   animated:YES
   ];
}
- (void)showZoomedPicture:(UIButton *)sender{
  UIViewController *showZoomedPictureController = [[UIViewController alloc]init];
  showZoomedPictureController.view.frame = self.view.frame;
  showZoomedPictureController.view.backgroundColor = [UIColor cyanColor];
  showZoomedPictureController.title = @"Cute Cat Animated Detail";
  
  UIImageView *cuteCatAnimatedImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cuteCatAnimated.gif"]];
  [cuteCatAnimatedImage setContentMode:UIViewContentModeScaleAspectFit];
  cuteCatAnimatedImage.frame = showZoomedPictureController.view.frame;
  [showZoomedPictureController.view addSubview:cuteCatAnimatedImage];
  
  [self.navigationController
   pushViewController:showZoomedPictureController
   animated:YES
   ];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if(self) {
    self.title = @"Favourites";
    self.tabBarItem.image = [UIImage imageNamed:@"favouritemIcon"];
  }
  return self;
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
