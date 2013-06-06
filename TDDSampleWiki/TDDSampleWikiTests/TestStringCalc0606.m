//
//  TestStringCalc0606.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/6/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "StringCalc0606.h"

SPEC_BEGIN(TestStringCalc0606)

describe(@"Test string calculator 06/06", ^{
    it(@"First test with empty or nil string", ^{
        [[theValue([StringCalc0606 calc:nil]) should] equal:theValue(0)];
        [[theValue([StringCalc0606 calc:@""]) should] equal:theValue(0)];
    });
    
    it(@"Test with string contains 1 number", ^{
        [[theValue([StringCalc0606 calc:@"54"]) should] equal:theValue(54)];
    });
    
    it(@"Test with string contains 2 numbers", ^{
        [[theValue([StringCalc0606 calc:@"10,20"]) should] equal:theValue(30)];
    });
    
    it(@"Test with string contains 3 or more than 3 numbers", ^{
        [[theValue([StringCalc0606 calc:@"1,2,3"]) should] equal:theValue(6)];
        [[theValue([StringCalc0606 calc:@"1,2,3,4,5"]) should] equal:theValue(15)];
    });
    
    
    it(@"Test with string contains more than 1 delimiters", ^{
        [[theValue([StringCalc0606 calc:@"1\n3,2"]) should] equal:theValue(6)];
    });
    
    it(@"Test with string support different delimiters", ^{
        [[theValue([StringCalc0606 calc:@"//;\n2;3"]) should] equal:theValue(5)];
    });
    
});

SPEC_END






























