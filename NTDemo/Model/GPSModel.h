//
//  GPSModel.h
//  GPSLocator
//
//  Created by nitin on 22/05/16.
//  Copyright © 2016 organization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPSModel : NSObject

@property(nonatomic,assign) NSInteger       iStateId;
@property(nonatomic,assign) NSInteger       iCityId;
@property(nonatomic,retain) NSString        *strStateName;
@property(nonatomic,retain) NSString        *strCityName;

@end
