//
//  StringCalc0506.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/5/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "StringCalc0506.h"

@implementation StringCalc0506

+ (NSInteger) calc:(NSString*)str{
    if (!str || ![str length]) {
        return 0;
    }
    
    NSArray *arr = [str componentsSeparatedByString:@","];
    NSInteger result = 0;

    for (NSString *s in arr) {
        result += [s intValue];
    }
    
    return result;
}

@end
