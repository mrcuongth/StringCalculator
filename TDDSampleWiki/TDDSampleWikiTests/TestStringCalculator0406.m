//
//  TestStringCalculator0406.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/4/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "StringCalculator0406.h"

SPEC_BEGIN(StringCalc0406)

describe(@"TestStringCalc0406", ^{
    it(@"Test with empty string", ^{
        [[theValue([StringCalculator0406 calc:@""]) should] equal:theValue(0)];
        [[theValue([StringCalculator0406 calc:nil]) should] equal:theValue(0)];
    });
    
    it(@"Test with one number in string", ^{
        [[theValue([StringCalculator0406 calc:@"10"]) should] equal:theValue(10)];
    });
    
    it(@"Test with two numbers in string, seprated by , character", ^{
        [[theValue([StringCalculator0406 calc:@"1,20"]) should] equal:theValue(21)];
    });
    
    it(@"Test with many numbers in string, separated by , character", ^{
        [[theValue([StringCalculator0406 calc:@"1,10,2"]) should] equal:theValue(13)];
        [[theValue([StringCalculator0406 calc:@"3,4,5,6,7,8"]) should] equal:theValue(33)];
    });
    
});

SPEC_END