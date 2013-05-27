//
//  TDDSampleWikiTests.m
//  TDDSampleWikiTests
//
//  Created by Trinh Huy Cuong  on 5/24/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "TDDSampleWikiTests.h"
#import "ServerCommunication.h"
#import <OCMock/OCMock.h>
#import "Money.h"

@implementation TDDSampleWikiTests

- (void)setUp
{
    [super setUp];
    
    currentCurrency = @"USD";
    anotherCurrency = @"VND";
    
    // Set-up code here.
    m = [[Money alloc] initWithCurrencyCode:currentCurrency];
    
    STAssertNotNil(m, @"Tets m1 not nil");
}

- (void)tearDown
{
    // Tear-down code here.
    m = nil;
    [super tearDown];
}

- (void) testConvertToAnotherCurrency{
    m.value = 10;
    STAssertEquals([m convertToCurrency:nil], (double)0, nil);
    STAssertEquals([m convertToCurrency:currentCurrency], m.value, nil);
    STAssertEquals([m convertToCurrency:anotherCurrency], (double)15, nil);
}

- (void)testAddValueToMoney{
    m.value = 10;
    [m additionValue:11];
    
    STAssertEquals(m.value, (double)21, nil);
}

- (void) testMoneyAddMoney{
    m.value = 10;
    Money *anotherMoney = [[Money alloc] initWithCurrencyCode:anotherCurrency];
    anotherMoney.value = 20;
    
    [m additionValueWithMoney:anotherMoney];
    STAssertEquals(m.value, (double)40, nil);
    
    [m minusMoney:anotherMoney];
    STAssertEquals(m.value, (double)10, nil);
}

- (void) testConvertMoneyUsingMock{
    
    id server = [OCMockObject mockForClass:[ServerCommunication class]];
    [[[server stub] andReturn:@2.0] getExchangeRateOfCurrency:[OCMArg any] andCurrency:[OCMArg any]];
    
    m.server = server;
    m.value = 10;
    
    STAssertEquals([m convertToCurrency:@"VND"], 20.0, nil);
}

@end





















