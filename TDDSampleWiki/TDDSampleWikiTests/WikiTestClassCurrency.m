//
//  TestClassCurrency.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 5/25/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//
#import "Kiwi.h"
#import "Money.h"
#import "ServerCommunication.h"

SPEC_BEGIN(MoneyCalculator)

describe(@"Test Money class", ^{
    __block Money *m;
    NSString *currencyCurrency = @"USD";
    NSString *anotherCurrency = @"VND";

    beforeAll(^{
        m = [[Money alloc] initWithCurrencyCode:currencyCurrency];
    });
    
    afterAll(^{
        m = nil;
    });
    
    it(@"Test init", ^{
        [m shouldNotBeNil];
        [[m should] beKindOfClass:[Money class]];
        
        [[[m getCurrency] should] equal:currencyCurrency];
    });
    
    it(@"Test convert to another currency", ^{
        m.value = 10;
        
        [[theValue([m convertToCurrency:nil]) should] equal:theValue(0)];
        [[theValue([m convertToCurrency:currencyCurrency]) should] equal:theValue(m.value)];
        [[theValue([m convertToCurrency:anotherCurrency]) should] equal:theValue(15)];
    });
    
    it(@"Test add value to money", ^{
        m.value = 10;
        [m additionValue:11];
        [[theValue(m.value) should] equal:theValue(21)];
    });
    
    it(@"Test add money to money", ^{
        m.value = 10;
        
        Money *anotherMoney = [[Money alloc] initWithCurrencyCode:anotherCurrency];
        anotherMoney.value = 20;

        [m additionValueWithMoney:anotherMoney];
        
        [[theValue(m.value) should] equal:theValue(40)];
        
        [m minusMoney:anotherMoney];
        [[theValue(m.value) should] equal:theValue(10)];
    });
    
    it(@"Test is greater than another money", ^{
        m.value = 10;
        
        Money *anotherMoney = [[Money alloc] initWithCurrencyCode:anotherCurrency];
        anotherMoney.value = 5;
        
        [[theValue([m isGreaterThanMoney:anotherMoney]) should] beYes];
    });    
});

describe(@"Test mock", ^{
    specify(^{
        id server = [ServerCommunication mock];
        [server stub:@selector(getExchangeRateOfCurrency:andCurrency:) andReturn:@1.3];
        
        Money *m = [[Money alloc] initWithCurrencyCode:@"USD"];
        m.value = 10;
        m.server = server;
        
        [[theValue([m convertToCurrency:@"VND"]) should] equal:theValue(13.0)];
    });
});

SPEC_END



























