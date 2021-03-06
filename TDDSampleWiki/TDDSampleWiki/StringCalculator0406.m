//
//  StringCalculator0406.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/4/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "StringCalculator0406.h"

@implementation StringCalculator0406

+ (NSInteger) calc:(NSString*)str{
    if (![str length] || !str) {
        return 0;
    }
    
    NSArray *arr = [str componentsSeparatedByString:@","];
    int result = 0;
    for (NSString *s in arr) {
        result += [s intValue];
    }
    
    return result;
}

@end
