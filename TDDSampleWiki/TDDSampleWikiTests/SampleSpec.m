//
//  SampleSpec.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 5/24/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "ViewController.h"

SPEC_BEGIN(MathSpec)

describe(@"Math", ^{
    __block ViewController *x;
    
    it(@"is pretty cool", ^{
        NSUInteger a = 16;
        NSUInteger b = 26;
        [[theValue(a + b) should] equal:theValue(42)];
    });

    beforeAll(^{
        x = [[ViewController alloc] init];
    });
    
    specify(^{    
        [x shouldNotBeNil];
        [[x should] beKindOfClass:[ViewController class]];
    });
});

SPEC_END