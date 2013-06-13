//
//  StringCalc1306.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/13/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "StringCalc1306.h"

@implementation StringCalc1306

+ (NSInteger) calc:(NSString*)str{
    if (![str length] || !str) {
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
