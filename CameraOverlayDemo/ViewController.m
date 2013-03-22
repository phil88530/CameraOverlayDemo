//
//  ViewController.m
//  CameraOverlayDemo
//
//  Created by YuFei Zhu on 22/03/2013.
//  Copyright (c) 2013 YuFei Zhu. All rights reserved.
//

#import "ViewController.h"
#import "OverlayView.h"

#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showCamera:(id)sender {
    //create an overlay view instance
    OverlayView *overlay = [[OverlayView alloc]
                            initWithFrame:CGRectMake(160, 100, 320, 430)];

    //create a new image picker instance
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //set source to video!
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    picker.mediaTypes = [NSArray arrayWithObject:(NSString *)kUTTypeMovie];
    picker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
    //hide all controls
    picker.showsCameraControls = YES;
    
    picker.navigationBarHidden = YES;
    picker.toolbarHidden = YES;

    //make the video preview full size
    picker.wantsFullScreenLayout = YES;
    //set our custom overlay view
    picker.cameraOverlayView = overlay;
    
    
    //show picker
    [self presentViewController:picker animated:YES completion:^{
        
    }];
}
@end
