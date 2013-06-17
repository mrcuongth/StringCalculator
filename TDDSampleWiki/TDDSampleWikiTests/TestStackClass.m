//
//  TestStackClass.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/17/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "Stack.h"

SPEC_BEGIN(TestStackClassaABC)

describe(@"Test Stack class", ^{
    it(@"1. Test size()", ^{
        Stack *s = [[Stack alloc] init];
        [s shouldNotBeNil];
        [[theValue([s size]) should] equal:theValue(0)];        
    });
    
    it(@"2. Push 1 element, size = 1", ^{
        Stack *s = [[Stack alloc] init];
        [s push:@"abc"];
        
        [[theValue([s size]) should] equal:theValue(1)];
    });
    
    it(@"3.", ^{
        Stack *s = [[Stack alloc] init];
        [s push:@"abc"];
        [s push:@"xyz"];
        NSInteger a = [s size];
        
        [s push:@"cuong"];
        [[theValue([s size]) should] equal:theValue(a+1)];
    });
    
    it(@"4.", ^{
        Stack *s = [[Stack alloc] init];
        NSString *element = [s top];
        [element shouldBeNil];
    });
    
    it(@"5. ", ^{
        Stack *s = [[Stack alloc] init];
        NSString *str = @"i'm a string";
        [s push:str];
    
        [[[s top] should] equal:str];
    });
    
    it(@"6. ", ^{
        Stack *s = [[Stack alloc] init];
        [[theBlock(^{
            [s pop];
        }) should] raiseWithName:@"StackEmptyException" reason:@"StackEmptyException message"];
    });
    
    it(@"7", ^{
        Stack *s = [[Stack alloc] init];
        [s push:@"abc"];
        [s push:@"xyz"];
        NSInteger a = [s size];
        
        [s pop];
        [[theValue([s size]) should] equal:theValue(a-1)];
    });
    
    it(@"8.", ^{
        Stack *s = [[Stack alloc] init];
        [s push:@"abc"];
        [s pop];
        [[theValue([s size]) should] equal:theValue(0)];
    });
    
    it(@"9.", ^{
        Stack *s = [[Stack alloc] init];
        [s push:@"abc"];
        [s push:@"xyz"];
        NSString *topStr = [s top];
        NSString *popStr = [s pop];
        
        [[topStr should] equal:popStr];
    });
    
    it(@"10.", ^{
        Stack *s = [[Stack alloc] init];

        NSString *str1 = @"str1";
        NSString *str2 = @"str2";
        NSString *str3 = @"str3";
        
        [s push:str1];
        [s push:str2];
        [s push:str3];
        
        [[[s pop] should] equal:str3];
        [[[s pop] should] equal:str2];
        [[[s pop] should] equal:str1];
        
        [[theValue([s size]) should] equal:theValue(0)];
        //Done;
    });
});

SPEC_END







































