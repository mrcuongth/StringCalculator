//
//  TestStringCalc1206.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/12/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "StringCalc1206.h"

SPEC_BEGIN(TestStringCalculator1206)

describe(@"Test string calculator 12.06", ^{
    it(@"Firt test with nil or empty string", ^{
        [[theValue([StringCalc1206 calc:nil]) should] equal:theValue(0)];
        [[theValue([StringCalc1206 calc:@""]) should] equal:theValue(0)];
    });
    
    it(@"String contains 1 number", ^{
        [[theValue([StringCalc1206 calc:@"10"]) should] equal:theValue(10)];
    });
    
    it(@"String contains more than 1 numbers", ^{
        [[theValue([StringCalc1206 calc:@"2,8"]) should] equal:theValue(10)];
        [[theValue([StringCalc1206 calc:@"2,1,5"]) should] equal:theValue(8)];
    });
    
    it(@"String contains new line", ^{
        [[theValue([StringCalc1206 calc:@"1\n,2,8"]) should] equal:theValue(11)];
    });
    
    it(@"Support different delimiters", ^{
        [[theValue([StringCalc1206 calc:@"//;\n1;2;8"]) should] equal:theValue(11)];
    });
});

SPEC_END