//
//  UITextField+NT.m
//  
//
//  Created by nitin on 22/05/16.
//  Copyright © 2016 organization. All rights reserved.
//

#import "UITextField+NT.h"

@implementation UITextField(NT)

-(void)adjustFontSize{
    
    UIFont *font=self.font;
    NSString *fontName =font.fontName;
    CGFloat fontSize = font.pointSize;
    CGFloat expextedSize=(SCREEN_WIDTH/STORYBOARD_WIDTH)*fontSize;
    [self setFont:[UIFont fontWithName:fontName size:expextedSize]];
}
-(void)spacingTextFieldRect:(CGFloat)f{
    
    f=(SCREEN_WIDTH/STORYBOARD_WIDTH)*f;
    CGRect rect=CGRectMake(0, 0, f, 0);
    UIView *paddingView = [[UIView alloc] initWithFrame:rect];
    self.leftView = paddingView;
    self.leftViewMode = UITextFieldViewModeAlways;
    self.rightView = paddingView;
    self.rightViewMode = UITextFieldViewModeAlways;
    paddingView=nil;
}

@end
