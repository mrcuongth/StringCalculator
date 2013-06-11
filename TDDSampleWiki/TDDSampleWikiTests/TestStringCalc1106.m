//
//  TestStringCalc1106.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/11/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(TestStringCalc1106)

describe(@"Test string calculator 11.06", ^{
    it(@"First test with nil or empty string", ^{
        [[theValue([StringCalc1106 calc:@""]) should] equal:theValue(0)];
        [[theValue([StringCalc1106 calc:nil]) should] equal:theValue(0)];
    });
});

SPEC_END