//
//  ViewController.m
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) loadView{ //called first time view property accessed
  CGRect viewRect = [[UIScreen mainScreen] bounds];
  UIView *view = [[UIView alloc]initWithFrame:viewRect];
  self.view = view;
}

- (void)viewDidLoad { //after loadView , typically where labels/ buttons go
  [super viewDidLoad];
  
  // Do any additional setup after loading the view, typically from a nib.
  self.view.backgroundColor = [UIColor yellowColor];
  
  UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];  //this is subviews
  firstButton.frame = CGRectMake(100, 100, 100, 44); // x = 100, y = 100, width : 100, 44 height (pts)
  [firstButton setTitle:@"Click me !" forState:UIControlStateNormal]; //state of the button
  [firstButton
   addTarget:self
   action:@selector(buttonPressed:)   //send method name in parameter , we called @selector
   forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:firstButton];
  
  UIButton *secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  secondButton.frame = CGRectMake(100, 150, 120, 44);
  [secondButton setTitle:@"Disappear me !" forState:UIControlStateNormal];
  [secondButton
   addTarget:self
   action:@selector(disappearButtonPressed:)
   forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:secondButton];
 
  self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  self.fiftyPercentButton.frame = CGRectMake(50, 200, 100, 44);
  [self.fiftyPercentButton setTitle:@"make 50%" forState:UIControlStateNormal];
  [self.fiftyPercentButton
   addTarget:self
   action:@selector(makeButtonTransparent:)
   forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:self.fiftyPercentButton];
  
  self.oneHundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  self.oneHundredPercentButton.frame = CGRectMake(250, 200, 100, 44);
  [self.oneHundredPercentButton setTitle:@"make 100%" forState:UIControlStateNormal];
  [self.oneHundredPercentButton
   addTarget:self
   action:@selector(makeButtonTransparent:)
   forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:self.oneHundredPercentButton];
  
  
  UILabel *firstLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 30, 200, 44)];
  firstLabel.backgroundColor = [UIColor clearColor];
  firstLabel.textColor = [UIColor blackColor];
  firstLabel.text = @"Hello , welcome to my app";
  [self.view addSubview:firstLabel];
  
  
  
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
  NSLog(@"Touch Begin");
}

- (void)buttonPressed:(UIButton *)sender{
  NSLog(@"button pressed, sender : %@",sender);
  self.view.alpha = ((double)arc4random() / 0x100000000);
}
-(void)disappearButtonPressed:(UIButton *)sender{
  NSLog(@"button disappear, sender : %@",sender);
  [sender removeFromSuperview];
}

-(void)makeButtonTransparent:(UIButton *)sender{
  NSLog(@"make button transparent : %@",sender);
  if([sender isEqual:self.fiftyPercentButton]){
    self.view.alpha = 0.5;
  }else{
    self.view.alpha = 1;
  }
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
