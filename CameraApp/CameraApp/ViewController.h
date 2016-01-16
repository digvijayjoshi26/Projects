//
//  ViewController.h
//  CameraApp
//
//  Created by Digvijay Joshi on 16/01/16.
//  Copyright © 2016 Digvijay Joshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate>

@property BOOL newMedia;
@property (nonatomic, strong) IBOutlet UIImageView *imageView;

- (IBAction)useCamera:(id)sender;
- (IBAction)userCameraRoll:(id)sender;

@end

