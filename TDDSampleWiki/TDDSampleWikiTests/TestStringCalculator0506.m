//
//  TestStringCalculator0506.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/5/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "StringCalc0506.h"

SPEC_BEGIN(TestStringCalc0506)

describe(@"Test string calculator 05/06", ^{
    it(@"First test with empty or nil string", ^{
        [[theValue([StringCalc0506 calc:@""]) should] equal:theValue(0)];
        [[theValue([StringCalc0506 calc:nil]) should] equal:theValue(0)];
    });
    
    it(@"Test with string contains 1 number", ^{
        [[theValue([StringCalc0506 calc:@"10"]) should] equal:theValue(10)];
    });
    
    it(@"Test with string contains 2 or more numbers", ^{
        [[theValue([StringCalc0506 calc:@"1,2"]) should] equal:theValue(3)];
        [[theValue([StringCalc0506 calc:@"3,4,5"]) should] equal:theValue(12)];
    });
    
    it(@"Test with string contains more than 1 separater", ^{
        [[theValue([StringCalc0506 calc:@"1\n3,2"]) should] equal:theValue(6)];
        [[theValue([StringCalc0506 calc:@"1\n3,2\n3,2"]) should] equal:theValue(11)];
        [[theValue([StringCalc0506 calc:@"1\n3,2\n3,2$4$4%4%6"]) should] equal:theValue(29)];
        [[theValue([StringCalc0506 calc:@"1\n3,2\n3,2$4$4%4%6abcd4fdiufui2asd2dfd3"]) should] equal:theValue(29)];
    });
});

SPEC_END


