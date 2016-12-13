//
//  FeedTableViewController.h
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedTableViewController : UITableViewController
@property(nonatomic)NSArray *imageFileNames;
@property(strong, nonatomic) NSArray *photos;

-(void)reloadData;
@end
