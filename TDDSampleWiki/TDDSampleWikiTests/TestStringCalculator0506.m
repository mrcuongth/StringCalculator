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
});

SPEC_END


