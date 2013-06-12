//
//  StringCalc1206.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/12/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "StringCalc1206.h"

@implementation StringCalc1206

+ (NSInteger) calc:(NSString*)str{
    if (![str length] || !str) {
        return 0;
    }
    
    NSString *delimiter = @"\n,";
    if ([str rangeOfString:@"//"].location != NSNotFound) {
        delimiter = [NSString stringWithFormat:@"%@%c", delimiter, [str characterAtIndex:2]];
    }
    
    NSArray *arr = [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:delimiter]];
    NSInteger result = 0;
    
    for (NSString *s in arr) {
        result += [s intValue];
    }

    return result;
}

@end
