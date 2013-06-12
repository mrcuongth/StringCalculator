//
//  TestStringCalc1206.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/12/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(TestStringCalculator1206)

describe(@"Test string calculator 12.06", ^{
    it(@"Firt test with nil or empty string", ^{
        [[theValue([StringCalc1206 calc:nil]) should] equal:theValue(0)];
        [[theValue([StringCalc1206 calc:@""]) should] equal:theValue(0)];
    });
});

SPEC_END