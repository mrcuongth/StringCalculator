//
//  TestStringCalc1106.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/11/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "StringCalc1106.h"

SPEC_BEGIN(TestStringCalc1106)

describe(@"Test string calculator 11.06", ^{
    it(@"First test with nil or empty string", ^{
        [[theValue([StringCalc1106 calc:@""]) should] equal:theValue(0)];
        [[theValue([StringCalc1106 calc:nil]) should] equal:theValue(0)];
    });
    
    it(@"Test with string contains 1 number", ^{
        [[theValue([StringCalc1106 calc:@"3"]) should] equal:theValue(3)];
    });
    
    it(@"String contains more than 1 number", ^{
        [[theValue([StringCalc1106 calc:@"1,2"]) should] equal:theValue(3)];
        [[theValue([StringCalc1106 calc:@"1,2,3,4"]) should] equal:theValue(10)];
    });
});

SPEC_END