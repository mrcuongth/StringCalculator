//
//  TestStringCalc1006.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/10/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "StringCalc1006.h"

SPEC_BEGIN(TestStringCalc1006)

describe(@"TestStringCalc1006", ^{
    it(@"First test with nil or empty string", ^{
        [[theValue([StringCalc1006 calc:@""]) should] equal:theValue(0)];
        [[theValue([StringCalc1006 calc:nil]) should] equal:theValue(0)];
    });
    
    it(@"Test with string contains 1 number", ^{
        [[theValue([StringCalc1006 calc:@"5"]) should] equal:theValue(5)];
    });
    
    it(@"Test with string contains 2 numbers", ^{
        [[theValue([StringCalc1006 calc:@"1,2"]) should] equal:theValue(3)];
        [[theValue([StringCalc1006 calc:@"4,5,6"]) should] equal:theValue(15)];
    });
    
    it(@"Test with string contains new line", ^{
        [[theValue([StringCalc1006 calc:@"1\n2,3"]) should] equal:theValue(6)];
    });
});

SPEC_END