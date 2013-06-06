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

    NSString *delimiter = @"\n,";
    
    if ([str rangeOfString:@"//"].location != NSNotFound) {
        delimiter = [delimiter stringByAppendingFormat:@"%c", [str characterAtIndex:2]];
    }
    
    int result = 0;
    NSArray *array = [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:delimiter]];
    for (NSString *s in array) {
        result += [s intValue];
    }
    
    return result;
}

@end
