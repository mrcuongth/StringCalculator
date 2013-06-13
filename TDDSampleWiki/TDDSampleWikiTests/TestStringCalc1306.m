//
//  TestStringCalc1306.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/13/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(TestStringCalc1306)

describe(@"Test string calculator 13.06", ^{
    [[theValue([StringCalc1306 calc:@""]) should] equal:theValue(0)];
    [[theValue([StringCalc1306 calc:nil]) should] equal:theValue(0)];
});

SPEC_END
