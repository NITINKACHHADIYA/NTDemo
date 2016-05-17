//
//  GPSLoginViewController.m
//  GPSLocator
//
//  Created by nitin on 17/05/16.
//  Copyright © 2016 organization. All rights reserved.
//

#import "GPSLoginViewController.h"

@interface GPSLoginViewController ()

@end

@implementation GPSLoginViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self webserviceLogin];
}

#pragma mark - seque

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
}

#pragma mark - webservices

-(void)webserviceLogin{
    
    NSMutableDictionary *dict=[[NSMutableDictionary alloc] init];
    [dict setObject:@"23" forKey:kAPIPostAge];
    [dict setObject:@"test" forKey:kAPIPostCity];
    [dict setObject:@"test@test.com" forKey:kAPIPostEmail];
    [dict setObject:@"test1" forKey:kAPIPostFirstName];
    [dict setObject:@"male" forKey:kAPIPostGender];
    [dict setObject:@"" forKey:kAPIPostImage];
    [dict setObject:@"test2" forKey:kAPIPostLastName];
    [dict setObject:@"registration" forKey:kAPIPostMethod];
    [dict setObject:@"345456342" forKey:kAPIPostMobileNo];
    [dict setObject:@"234533" forKey:kAPIPostPostalCode];
    [dict setObject:@"test" forKey:kAPIPostState];
    
    NSString *req=[dict bv_jsonStringWithPrettyPrint:NO];
    
    NTApis *apis=[[NTApis alloc] init];
    apis.iAPIType=KAPITypePostJson;
    apis.responseType=KResponseTypeJson;
    
    apis.strLink=[NTWebServices API:kAPIRegistration];
    apis.strJsonParameters=req;
    apis.strGetParameters=@"";
    apis.dictParameters=nil;
    apis.strModuleName=[[self class] description];
    
    apis.tag=1;
    apis.minutes=0.5;
    [apis startRequest];
    
    [apis finishRequest:^(NSError *error, id jsonRes, NSHTTPURLResponse *response) {
        if (!error) {
            
            NSData *data=(NSData*)jsonRes;
            if (data.length != 0 && response.statusCode==200){
                
                if (apis.responseType==KResponseTypeJson) {
                    
                    NSError* error=nil;
                    id json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
                    if (!error && json){
                        
                        NSLog(@"%@",json);
                        
                    }else{
                        
                    }
                }else if(apis.responseType==KResponseTypeString) {
                    if (data.length==0) {
                        
                    }else{
                        //NSString *json = [[NSString alloc] initWithBytes:[data bytes] length:[data length] encoding:NSUTF8StringEncoding];
                    }
                }else if(apis.responseType==KResponseTypeData) {
                    
                }
            }else{
                
            }
            
        }else{
            
        }
    }];
}

@end
