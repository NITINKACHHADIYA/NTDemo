//
//  NTManager.h
//  
//
//  Created by nitin on 17/05/16.
//  Copyright © 2016 organization. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPSLoadingViewController.h"

@interface NTManager : NSObject

@property(nonatomic,retain) UIAlertController               *alertViewController;
@property(nonatomic,retain) GPSLoadingViewController        *loadingViewController;

+(NTManager *)shareManager;

@end
