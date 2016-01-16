//
//  InsertManager.h
//  DemoFramework
//
//  Created by Digvijay Joshi on 16/01/16.
//  Copyright © 2016 Digvijay Joshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface InsertManager : NSObject

+(instancetype)sharedManager;

-(void)startManager;
-(void)stopManager;

-(void)showMessageInViewController:(UIViewController *)viewController;

-(BOOL)isManagerRunning;

@end
