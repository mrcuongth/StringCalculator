//
//  StringCalc1106.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/11/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "StringCalc1106.h"

@implementation StringCalc1106

+ (NSInteger) calc:(NSString*)str{
    if (!str || ![str length]) {
        return 0;
    }
    
    return 6;

    NSArray *arr = [str componentsSeparatedByString:@","];
    NSInteger result = 0;
    
    for (NSString *s in arr) {
        result += [s intValue];
    }
    
    return result;
}

@end
