//
//  StringCalculator.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 5/27/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

+ (int) calc:(NSString*)str{
    if (!str || ![str length]) {
        return 0;
    }
    
    NSArray *numbersInStr = [str componentsSeparatedByString:@","];
    int result = 0;
    for (NSString *number in numbersInStr) {
        result += [number intValue];
    }
    
    return result;
}


@end
