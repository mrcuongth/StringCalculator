//
//  StringCalc1006.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/10/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "StringCalc1006.h"

@implementation StringCalc1006

+ (NSInteger) calc:(NSString*)str{
    if (!str || ![str length]) {
        return 0;
    }
    
    NSString *separated = @"\n,";
    if ([str rangeOfString:@"//"].location != NSNotFound) {
        separated = [NSString stringWithFormat:@"%@%c", separated, [str characterAtIndex:2]];
    }
    
    NSArray *arr = [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:separated]];
    NSInteger result = 0;
    
    NSString *error = @"";;
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
