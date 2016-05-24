//
//  UILabel+NT.m
//  
//
//  Created by nitin on 22/05/16.
//  Copyright © 2016 organization. All rights reserved.
//

#import "UILabel+NT.h"

@implementation UILabel(NT)

-(void)adjustFontSize{
    
    UIFont *font=self.font;
    NSString *fontName =font.fontName;
    CGFloat fontSize = font.pointSize;
    CGFloat expextedSize=(SCREEN_WIDTH/STORYBOARD_WIDTH)*fontSize;
    [self setFont:[UIFont fontWithName:fontName size:expextedSize]];
}

@end
