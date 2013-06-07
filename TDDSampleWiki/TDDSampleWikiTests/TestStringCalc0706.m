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
});

SPEC_END