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
    
    NSString *delimeter = @"\n,";
    if ([str rangeOfString:@"//"].location != NSNotFound) {
        delimeter = [NSString stringWithFormat:@"\n,%c", [str characterAtIndex:2]];
    }
    
    NSArray *arr = [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:delimeter]];
    int result = 0;
    NSMutableString *errorMessage = [[NSMutableString alloc] init];
    for (NSString *s in arr) {
        int value = [s intValue];
        
        if (value < 0) {
            [errorMessage appendString:s];
        }
        else if(value < 1001){
            result += value;
        }
    }
    
    if ([errorMessage length]) {
        NSLog(@"negatives not allowed: %@", errorMessage);
    }
    
    return result;
}

@end
