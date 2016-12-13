//
//  ViewController.h
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
-(void)buttonPressed:(UIButton *)sender;
-(void)disappearButtonPressed:(UIButton *)sender;
-(void)makeButtonTransparent:(UIButton *)sender;

@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *oneHundredPercentButton;

@end

