//
//  TestStringCalc1006.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/10/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(TestStringCalc1006)

describe(@"TestStringCalc1006", ^{
    it(@"First test with nil or empty string", ^{
        [[theValue([StringCalc1006 calc:@""]) should] equal:theValue(0)];
        [[theValue([StringCalc1006 calc:nil]) should] equal:theValue(0)];
    });
});

SPEC_END