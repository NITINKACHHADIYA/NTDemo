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

@end

#define kEncriptionKey @"GPSLocator-(Encription)-Key"

#pragma mark - registrtion

#define kAPIRegistration                    @"register.php"

#define kAPIPostFirstName                   @"fname"
#define kAPIPostLastName                    @"lname"
#define kAPIPostMobileNo                    @"mnum"
#define kAPIPostEmail                       @"email"
#define kAPIPostAge                         @"age"
#define kAPIPostGender                      @"gender"
#define kAPIPostCity                        @"city"
#define kAPIPostState                       @"state"
#define kAPIPostPostalCode                  @"pcode"
#define kAPIPostImage                       @"user_image"
#define kAPIPostMethod                      @"method"
