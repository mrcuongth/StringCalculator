//
//  TestStringCalc1306.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/13/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "StringCalc1306.h"

SPEC_BEGIN(TestStringCalc1306xx)

describe(@"Test string calculator 13.06", ^{
    it(@"Test with nil or empty string", ^{
        [[theValue([StringCalc1306 calc:@""]) should] equal:theValue(0)];
        [[theValue([StringCalc1306 calc:nil]) should] equal:theValue(0)];    
    });
    
    it(@"test with string contains 1 number", ^{
        [[theValue([StringCalc1306 calc:@"5"]) should] equal:theValue(5)];
    });
});

SPEC_END
