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

    return [str intValue];
}

@end
