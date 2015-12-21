//
//  ApiMethod.m
//  MSW2
//
//  Created by simon on 29/09/2015.
//  Copyright (c) 2015 Score Lab. All rights reserved.
//

#import "ApiMethod.h"

@implementation ApiMethod

-(NSDictionary *) ApiMethodReturnNSDictionaryForOption:(NSString *)option ForTheURL:(NSString *) url_str WithContent:(NSString *)data{
    
    if (data != NULL)
    {
        NSString * post =[NSString stringWithFormat:data];
        
        NSData *postdata= [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
        NSString *postLength=[NSString stringWithFormat:@"%lu",(unsigned long)[postdata length]];
        NSMutableURLRequest *request= [[NSMutableURLRequest alloc]init];
        
        
        NSString *str_url=url_str;
        NSString *str_option = [option uppercaseString];
        [request setURL:[NSURL URLWithString:str_url]];
        [request setHTTPMethod:str_option];
        [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [request setHTTPBody:postdata];
        NSError *error;
        NSURLResponse *response;
        NSError *ResponseError;
        
        NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:urlData options:0 error:&ResponseError];
        //NSHTTPURLResponse* httpResponse = (NSHTTPURLResponse*)response;
        return (dict);
    }
    else{
        NSMutableURLRequest *request1 = [[NSMutableURLRequest alloc] init];
        NSString *url1 = [NSString stringWithFormat:data];
        
        [request1 setURL:[NSURL URLWithString:url1]];
        NSString *str_option = [option uppercaseString];
        [request1 setHTTPMethod:str_option];
        NSError *error1;
        NSURLResponse *response1;
        NSError *ResponseError1;
        
        NSData *urlData1=[NSURLConnection sendSynchronousRequest:request1 returningResponse:&response1 error:&error1];
        NSDictionary *dict1 = [NSJSONSerialization JSONObjectWithData:urlData1 options:NSJSONReadingMutableContainers error:&ResponseError1];
        //NSHTTPURLResponse* httpResponse = (NSHTTPURLResponse*)response1;
        return (dict1);
    }
    return NULL;
}

-(NSHTTPURLResponse *) ApiMethodReturnNSHTTPURLResponseForOption:(NSString *)option ForTheURL:(NSString *) url_str WithContent:(NSString *)data{
    
    if (data != NULL)
    {
        NSString * post =[NSString stringWithFormat:data];
        
        NSData *postdata= [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
        NSString *postLength=[NSString stringWithFormat:@"%lu",(unsigned long)[postdata length]];
        NSMutableURLRequest *request= [[NSMutableURLRequest alloc]init];
        
        
        NSString *str_url=url_str;
        NSString *str_option = [option uppercaseString];
        [request setURL:[NSURL URLWithString:str_url]];
        [request setHTTPMethod:str_option];
        [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [request setHTTPBody:postdata];
        NSError *error;
        NSURLResponse *response;
        NSError *ResponseError;
        
        NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        [NSJSONSerialization JSONObjectWithData:urlData options:0 error:&ResponseError];
        NSHTTPURLResponse* httpResponse = (NSHTTPURLResponse*)response;
        return (httpResponse);
    }
    else{
        NSMutableURLRequest *request1 = [[NSMutableURLRequest alloc] init];
        NSString *url1 = [NSString stringWithFormat:data];
        
        [request1 setURL:[NSURL URLWithString:url1]];
        NSString *str_option = [option uppercaseString];
        [request1 setHTTPMethod:str_option];
        NSError *error1;
        NSURLResponse *response1;
        NSError *ResponseError1;
        
        NSData *urlData1=[NSURLConnection sendSynchronousRequest:request1 returningResponse:&response1 error:&error1];
        [NSJSONSerialization JSONObjectWithData:urlData1 options:NSJSONReadingMutableContainers error:&ResponseError1];
        NSHTTPURLResponse* httpResponse = (NSHTTPURLResponse*)response1;
        return (httpResponse);
    }
    return NULL;
}

@end