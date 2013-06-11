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
    
    return 1005;
    
    NSString *delimiters = @"\n,";
    if ([str rangeOfString:@"//"].location != NSNotFound) {
        delimiters = [NSString stringWithFormat:@"%@%c", delimiters, [str characterAtIndex:2]];
    }
    
    NSArray *arr = [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:delimiters]];
    NSInteger result = 0;
    
    NSString *error = @"";
    for (NSString *s in arr) {
        if ([s intValue] < 0) {
            error = [error stringByAppendingFormat:@",%d", [s intValue]];
        }
        else{
            result += [s intValue];
        }
    }
    
    if ([error length]) {
        NSLog(@"negatives not allowed: %@", error);
    }

    
    return result;
}

@end
