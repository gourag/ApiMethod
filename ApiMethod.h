//
//  ApiMethod.h
//  MSW2
//
//  Created by simon on 29/09/2015.
//  Copyright (c) 2015 Score Lab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApiMethod : NSObject

-(NSDictionary *) ApiMethodReturnNSDictionaryForOption:(NSString *)option ForTheURL:(NSString *) url_str WithContent:(NSString *)data;
-(NSHTTPURLResponse *) ApiMethodReturnNSHTTPURLResponseForOption:(NSString *)option ForTheURL:(NSString *) url_str WithContent:(NSString *)data;

@end