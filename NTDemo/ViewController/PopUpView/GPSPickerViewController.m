//
//  GPSPickerViewController.m
//  
//
//  Created by nitin on 23/05/16.
//  Copyright © 2016 organization. All rights reserved.
//

#import "GPSPickerViewController.h"
#import "GPSModel.h"

@interface GPSPickerViewController ()

@end

@implementation GPSPickerViewController
@synthesize iPickerType,arrayPicker,picker,navigationBar;

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - UIPickerViewDelegate

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return arrayPicker.count;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (iPickerType==kPickerTypeGender) {
        return arrayPicker[row];
    }else if (iPickerType==kPickerTypeState) {
        return ((GPSModel *)arrayPicker[row]).strStateName;
    }else if (iPickerType==kPickerTypeCity) {
        return ((GPSModel *)arrayPicker[row]).strCityName;
    }
    return @"";
}
-(IBAction)pickerDone{
    [self pickerCancel];
    if (arrayPicker.count>0) {
        if (self.pickerSelectionDone)
            self.pickerSelectionDone(arrayPicker[[picker selectedRowInComponent:0]],1);
    }else{
        if (self.pickerSelectionDone)
            self.pickerSelectionDone(nil,0);
    }
    [self.view removeFromSuperview];
}
-(IBAction)pickerCancel{
    picker.hidden=YES;
    navigationBar.hidden=YES;
    if (self.pickerSelectionDone)
        self.pickerSelectionDone(nil,0);
    [self.view removeFromSuperview];
}
-(void)finishRequest:(pickerSelectionCompleted)complitionBlock{
    
    self.pickerSelectionDone=complitionBlock;
}

@end
