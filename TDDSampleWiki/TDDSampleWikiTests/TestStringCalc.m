//
//  TestStringCalc.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 5/27/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "TestStringCalc.h"
#import "StringCalculator.h"

@implementation TestStringCalc

- (void) testStringCalc{
    STAssertEquals(1, 1, nil);
    STAssertEquals([StringCalculator calc:nil], 0, nil);
    STAssertEquals([StringCalculator calc:@""], 0, nil);
    STAssertEquals([StringCalculator calc:@"1"], 1, nil);
    STAssertEquals([StringCalculator calc:@"1,2"], 3, nil);
    STAssertEquals([StringCalculator calc:@"1,2,111"], 114, nil);
}

@end
