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
    
    it(@"Test with negative number", ^{
        [[theBlock(^{
            [StringCalc1206 calc:@"//;\n1;2;8;-1;3;-4"];
        }) should] raiseWithName:@"CalcNegativeNumber" reason:@"negative numbers:-1,-4"];
    });
    
    it(@"Test with string contains number larger than 1000", ^{
        [[theValue([StringCalc1206 calc:@"//;\n1;2;8,1000,1001"]) should] equal:theValue(1011)];
    });
    
    it(@"Test with long delimiter", ^{
        [[theValue([StringCalc1206 calc:@"//[;;;]\n1;;;2;;;8;;;1000;;;1001"]) should] equal:theValue(1011)];
    });
 
});

SPEC_END






































