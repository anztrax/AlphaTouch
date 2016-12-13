//
//  FeedTableViewController.m
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import "FeedTableViewController.h"
#import "PhotoViewController.h"

@interface FeedTableViewController ()

@end

@implementation FeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.view.backgroundColor = [UIColor whiteColor];
  self.title = @"Feed";
  self.tabBarItem.image = [UIImage imageNamed:@"feedIcon"];
  self.imageFileNames = @[@"cuteCatAnimated.gif",@"giantCat",@"FancyCat"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  return self.imageFileNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  //initialize and setup each cell in your tableView
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Title"]; //check to see if there are any cells of style "Title" we can reuse
  if(cell == nil){
    cell = [[UITableViewCell alloc]
            initWithStyle:UITableViewCellStyleDefault
            reuseIdentifier:@"Title"
            ];
    NSInteger currentRow = indexPath.row;
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %i",self.imageFileNames[currentRow],(round(currentRow) + 1)];
  }
  return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  //this method runs each time a cell is tapped
  NSInteger currentRow = indexPath.row;
  NSInteger currentSection = indexPath.section;
  
  PhotoViewController *photoViewController = [[PhotoViewController alloc]init];
  photoViewController.imageFileName = self.imageFileNames[currentRow];

  [self.navigationController
   pushViewController:photoViewController
   animated:YES
   ];
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
