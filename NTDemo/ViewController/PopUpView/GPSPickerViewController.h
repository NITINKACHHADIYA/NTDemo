//
//  GPSPickerViewController.h
//  GPSLocator
//
//  Created by nitin on 23/05/16.
//  Copyright © 2016 organization. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^pickerSelectionCompleted)(id model,BOOL);

@interface GPSPickerViewController : UIViewController

@property(nonatomic,retain) IBOutlet UINavigationBar    *navigationBar;
@property(nonatomic,retain) IBOutlet UIPickerView       *picker;
@property(nonatomic,retain) NSMutableArray              *arrayPicker;
@property(nonatomic,assign) NSInteger                   iPickerType;

@property(nonatomic,copy)   pickerSelectionCompleted    pickerSelectionDone;

-(void)finishRequest:(pickerSelectionCompleted)pickerDone;

@end
