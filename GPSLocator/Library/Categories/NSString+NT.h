//
//  NSString+NT.h
//  GPSLocator
//
//  Created by nitin on 17/05/16.
//  Copyright © 2016 organization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(NT)

-(BOOL)validateEmail;
-(BOOL)stringIsEmpty;
-(NSString *)DBSingleQuata;
-(NSDate *)DateFromStringFormat:(NSString *)Format;
-(id)GetJSON;

@end
