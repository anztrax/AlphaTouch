//
//  AppDelegate.h
//  AlphaTouch
//
//  Created by andrew ananta on 12/13/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic)ViewController *viewController;

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

