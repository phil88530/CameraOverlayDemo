//
//  OverlayView.m
//  CameraOverlayDemo
//
//  Created by YuFei Zhu on 22/03/2013.
//  Copyright (c) 2013 YuFei Zhu. All rights reserved.
//

#import "OverlayView.h"

@implementation OverlayView
@synthesize demoLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UILabel *label = [[UILabel alloc] init];
        label.contentMode = UIViewContentModeCenter;
        label.textColor = [UIColor whiteColor];
        [label setTextAlignment: NSTextAlignmentCenter];
        label.text = @"demo text on camera";
        [label setBounds:CGRectMake(0, 0, 320, 40)];
        [label setBackgroundColor:[UIColor grayColor]];
        label.alpha = 0.6;
        
        [self addSubview:label];
        
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
