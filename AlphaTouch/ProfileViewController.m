//
//  ProfileViewController.m
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import "ProfileViewController.h"
#import "UIImageView+AFNetworking.h"
#import <AFNetworking.h>

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.view.backgroundColor = [UIColor brownColor];
  
  CGFloat currentWidth = self.view.frame.size.width;
  self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
  self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;  //this code is make scrollview height same as the screen view (not the size after cut with tab view)
  self.scrollView.contentSize = CGSizeMake(round(currentWidth), 1320);
  
  NSURL *JSONData = [NSURL URLWithString:@"https://rawgit.com/anztrax/learn-objectiveC/master/data.json"];
  NSURLRequest *requestedData = [NSURLRequest requestWithURL:JSONData];
  AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc]initWithRequest:requestedData];
  operation.responseSerializer = [AFJSONResponseSerializer serializer];
  [operation
   setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject){
     self.userProfile = responseObject;
     [self requestSuccessful];
   }
   failure:^(AFHTTPRequestOperation *operation, NSError *error){
     NSLog(@"NSError %@", error.localizedDescription);
   }
   ];
  [operation start];
}
- (void)requestSuccessful{
  NSArray *allKeysResponseData = [self.userProfile allKeys];
  NSArray *allValuesResponseData = [self.userProfile allValues];
  NSLog(@"Success : %@",allKeysResponseData);
  
  UIImageView *catProfileImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"profileCatImage"]];
  [catProfileImage setContentMode:UIViewContentModeScaleAspectFit];
  catProfileImage.frame = CGRectMake(20, 20, 100, 113);
  [catProfileImage
   setImageWithURL:[NSURL URLWithString:self.userProfile[@"imageURL"]]
   placeholderImage:[UIImage imageNamed:@"userPlaceholderImage"]
   ];
  
  [self.scrollView addSubview:catProfileImage];
  
  UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 140, 280, 40)];
  nameLabel.text = [NSString stringWithFormat:@"Name : %@", self.userProfile[@"name"]];
  [self.scrollView addSubview:nameLabel];
  
  UILabel *cityLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 200, 280, 40)];
  cityLabel.text = [NSString stringWithFormat:@"City : %@",self.userProfile[@"city"]];
  [self.scrollView addSubview:cityLabel];
  
  UILabel *memberSinceLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 260, 280, 40)];
  memberSinceLabel.text =  [NSString stringWithFormat:@"Member since : %@",self.userProfile[@"member since"]];
  [self.scrollView addSubview:memberSinceLabel];
  
  UITextView *biography = [[UITextView alloc]initWithFrame:CGRectMake(12, 320, 300, 1000)];
  biography.font = [UIFont fontWithName:@"Helvetica" size:120];
  biography.editable = NO;
  biography.backgroundColor = [UIColor brownColor];
  biography.scrollEnabled = NO;
  biography.text = self.userProfile[@"biography"];
  [self.scrollView addSubview:biography];
  
  [self.view addSubview:self.scrollView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if(self) {
    self.title = @"Profile";
    self.tabBarItem.image = [UIImage imageNamed:@"profileIcon"];
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
