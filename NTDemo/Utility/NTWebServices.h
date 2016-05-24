//
//  NTWebServices.h
//  GPSLocator
//
//  Created by nitin on 17/05/16.
//  Copyright © 2016 organization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NTWebServices : NSObject

+(NSString *)APIMainLink;
+(NSString *)APIImageLink;
+(NSString *)API:(NSString *)APIs;

+(NSString *)encrypt:(NSString *)text;
+(NSString *)decrypt:(NSString *)text;

/** commonPickerType */
typedef NS_ENUM(NSInteger,PickerType){
    kPickerTypeGender=1,
    kPickerTypeState=2,
    kPickerTypeCity=3,
    kPickerTypeEventType=4,
    kPickerTypeEventPaid=5,
};

@end

#define kEncriptionKey @"-(Encription)-Key"
