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
    
    if ([str length] < 3) {
        return [str intValue];
    }
    
    NSArray *array = [str componentsSeparatedByString:@","];
    return [[array objectAtIndex:0] intValue] + [[array objectAtIndex:1] intValue];
}

@end
