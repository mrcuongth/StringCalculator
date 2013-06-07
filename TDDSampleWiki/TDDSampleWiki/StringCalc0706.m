//
//  StringCalc0706.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/7/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "StringCalc0706.h"

@implementation StringCalc0706

+ (NSInteger) calc:(NSString*)str{
    if (!str || ![str length]) {
        return 0;
    }
    
    return [str intValue];
}

@end
