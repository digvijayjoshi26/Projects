//
//  InsertManager.m
//  DemoFramework
//
//  Created by Digvijay Joshi on 16/01/16.
//  Copyright © 2016 Digvijay Joshi. All rights reserved.
//

#import "InsertManager.h"
#import "CustomView.h"

@interface InsertManager ()

@property (nonatomic) BOOL isEnabled;

@end

@implementation InsertManager

+ (instancetype)sharedManager {
    static InsertManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[[self class] alloc] init];
    });
    return sharedManager;
}

- (void)startManager {
    NSLog(@"Manager is running");
    _isEnabled = YES;
}

- (void)stopManager {
    NSLog(@"Manager stopped");
    _isEnabled = NO;
}

- (BOOL)isManagerRunning {
    return _isEnabled;
}

- (void)showMessageInViewController:(UIViewController *)viewController {
    if (_isEnabled) {
        NSBundle *frameworkBundle = [NSBundle bundleForClass:self.class];
        CustomView *customView = [[frameworkBundle loadNibNamed:@"CustomVIew" owner:self options:nil] firstObject];
        customView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        [viewController.view addSubview:customView];
    }
}

@end
