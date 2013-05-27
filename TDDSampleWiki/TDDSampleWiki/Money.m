//
//  Currency.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 5/25/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Money.h"
#import "ServerCommunication.h"

@implementation Money
@synthesize value, server;

- (Money*) initWithCurrencyCode:(NSString*)cCode{
    self = [super init];
    currencyCode = cCode;
    value = 0;
    return self;
}

- (NSString*) getCurrency{
    return currencyCode;
}

- (void) additionValue:(double)addValue{
    value += addValue;
}

- (double) convertToCurrency:(NSString*)toCurrency{
    if (!toCurrency) {
        return 0;
    }
    
    if ([toCurrency isEqualToString:[self getCurrency]]) {
        return value;
    }
    
    return value * [[self exchangeRateWithCurrency:toCurrency] doubleValue];
}

- (void) additionValueWithMoney:(Money*)anotherMoney{
    value += [anotherMoney convertToCurrency:[self getCurrency]];
}

- (void) minusMoney:(Money*)anotherMoney{
    value -= [anotherMoney convertToCurrency:[self getCurrency]];
}

- (BOOL) isGreaterThanMoney:(Money*)anotherMoney{
    return value > [anotherMoney convertToCurrency:[self getCurrency]];
}

- (NSNumber*) exchangeRateWithCurrency:(NSString*)toCurrency{
    if (!server) {
        server = [[ServerCommunication alloc] init];
    }
    return [server getExchangeRateOfCurrency:currencyCode andCurrency:toCurrency];
}

@end
























