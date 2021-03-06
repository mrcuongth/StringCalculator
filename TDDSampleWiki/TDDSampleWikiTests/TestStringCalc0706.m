//
//  TestStringCalc0706.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/7/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "StringCalc0706.h"

SPEC_BEGIN(TestStringCalc0706)

describe(@"Test StringCalculator 07/06/2013", ^{
    it(@"First test with nil or emplty string", ^{
        [[theValue([StringCalc0706 calc:@""]) should] equal:theValue(0)];
        [[theValue([StringCalc0706 calc:nil]) should] equal:theValue(0)];
    });
    
    it(@"test with string contains 1 number", ^{
        [[theValue([StringCalc0706 calc:@"5"]) should] equal:theValue(5)];
    });
    
    it(@"Test with string contains 2 numbers", ^{
        [[theValue([StringCalc0706 calc:@"1,3"]) should] equal:theValue(4)];
    });
    
    it(@"Test with string contains more than 2 numbers", ^{
        [[theValue([StringCalc0706 calc:@"1,3,4"]) should] equal:theValue(8)];
        [[theValue([StringCalc0706 calc:@"11,13,14"]) should] equal:theValue(38)];
    });
    
    it(@"Test with string contains new line", ^{
        [[theValue([StringCalc0706 calc:@"1\n3,4,5"]) should] equal:theValue(13)];
    });
    
    it(@"Test with string to support different delimiters", ^{
        [[theValue([StringCalc0706 calc:@"//;\n1;2;3"]) should] equal:theValue(6)];
    });
    
    it(@"Test with string contains negative number", ^{
        [[theValue([StringCalc0706 calc:@"//;\n1;2;-3;-5;1,4"]) should] equal:theValue(8)];
    });
    
    it(@"Test with string contains number larger than 1000", ^{
        [[theValue([StringCalc0706 calc:@"//;\n1;2;-3;-5;1,4,1001,1"]) should] equal:theValue(9)];
        [[theValue([StringCalc0706 calc:@"//;\n1;2;-3;-5;1,4,1000,1"]) should] equal:theValue(1009)];
    });
});

SPEC_END