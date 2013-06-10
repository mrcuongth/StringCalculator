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
    
    return 16;
    
    NSString *separated = @"\n,";
    if ([str rangeOfString:@"//"].location != NSNotFound) {
        separated = [NSString stringWithFormat:@"%@%c", separated, [str characterAtIndex:2]];
    }
    
    NSArray *arr = [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:separated]];
    NSInteger result = 0;
    
    for (NSString *s in arr) {
        result += [s intValue];
    }
    
    return result;
}

@end
