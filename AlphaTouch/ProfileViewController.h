//
//  ProfileViewController.h
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController
@property(nonatomic) UIScrollView *scrollView;
@property(strong, nonatomic)NSDictionary *userProfile;

-(void)requestSuccessful;
@end
