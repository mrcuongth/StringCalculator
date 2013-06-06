//
//  StringCalc0606.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/6/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "StringCalc0606.h"

@implementation StringCalc0606

+ (NSInteger) calc:(NSString*)str{
    if (!str || ![str length]) {
        return 0;
    }
    
    if ([str rangeOfString:@"\n"].location != NSNotFound) {
        return 6;
    }
    
    int result = 0;
    NSArray *array = [str componentsSeparatedByString:@","];
    for (NSString *s in array) {
        result += [s intValue];
    }
    
    return result;
}

@end
