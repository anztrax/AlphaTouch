//
//  FeedViewController.m
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import "FeedViewController.h"
#import "FavouritesViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view from its nib.
  self.view.backgroundColor = [UIColor blueColor];
  
  UIButton *favouriteButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  favouriteButton.frame = CGRectMake(60, 100, 200, 44);
  [favouriteButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
  [favouriteButton setTitle:@"View Favourites" forState:UIControlStateNormal];
  [favouriteButton
   addTarget:self
   action:@selector(showFavourites:)
   forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:favouriteButton];
}

- (void)showFavourites:(UIButton *)sender{
  FavouritesViewController *favouritesViewController = [[FavouritesViewController alloc]init];
  [self.navigationController
   pushViewController:favouritesViewController
   animated:YES
   ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if(self) {
    self.title = @"Feed";
    self.tabBarItem.image = [UIImage imageNamed:@"feedIcon"];
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
