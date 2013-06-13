//
//  TestStringCalc1306.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/13/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "StringCalc1306.h"

SPEC_BEGIN(TestStringCalc1306)

describe(@"Test string calculator 13.06", ^{
    it(@"Test with nil or empty string", ^{
        [[theValue([StringCalc1306 calc:@""]) should] equal:theValue(0)];
        [[theValue([StringCalc1306 calc:nil]) should] equal:theValue(0)];    
    });
    
    it(@"test with string contains 1 number", ^{
        [[theValue([StringCalc1306 calc:@"5"]) should] equal:theValue(5)];
    });
    
    it(@"String contains more than 1 numbers", ^{
        [[theValue([StringCalc1306 calc:@"2,13"]) should] equal:theValue(15)];
        [[theValue([StringCalc1306 calc:@"2,13,4,3"]) should] equal:theValue(22)];
    });
    
    it(@"String contains new line", ^{
        [[theValue([StringCalc1306 calc:@"2\n3,4,3"]) should] equal:theValue(12)];
    });
    
    it(@"Support different delimiters", ^{
        [[theValue([StringCalc1306 calc:@"//;\n1;2;4;3"]) should] equal:theValue(10)];
    });
});

SPEC_END
