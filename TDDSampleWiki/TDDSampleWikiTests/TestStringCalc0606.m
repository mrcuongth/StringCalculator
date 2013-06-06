//
//  TestStringCalc0606.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/6/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(TestStringCalc0606)

describe(@"Test string calculator 06/06", ^{
    it(@"First test with empty or nil string", ^{
        [[theValue([StringCalc0606 calc:nil]) should] equal:theValue(0)];
        [[theValue([StringCalc0606 calc:@""]) should] equal:theValue(0)];
    });
    
    
});

SPEC_END






























