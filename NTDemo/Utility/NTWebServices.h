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

#define kEncriptionKey @"GPSLocator-(Encription)-Key"

#pragma mark - registrtion

#define kAPIRegistration                    @"registration"
#define kAPICity                            @"get_city"
#define kAPIState                           @"get_state"


#define kAPIPostFirstName                   @"fname"
#define kAPIPostLastName                    @"lname"
#define kAPIPostMobileNo                    @"mnum"
#define kAPIPostEmail                       @"email"
#define kAPIPostAge                         @"age"
#define kAPIPostGender                      @"gender"
#define kAPIPostCity                        @"city"
#define kAPIPostState                       @"state"
#define kAPIPostPostalCode                  @"postal_code"
#define kAPIPostImage                       @"user_image"
#define kAPIPostMethod                      @"method"

#define kAPIGetStatus                       @"status"

#define kAPIGetCityId                       @"city_id"
#define kAPIGetCityName                     @"city_name"
#define kAPIGetStateId                      @"state_id"
#define kAPIGetStateName                    @"state_name"
