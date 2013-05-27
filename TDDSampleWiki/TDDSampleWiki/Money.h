//
//  Currency.h
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 5/25/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ServerCommunication;
@interface Money: NSObject{
    NSString *currencyCode;
    double value;
    
    ServerCommunication *server;
}

@property (nonatomic, readwrite) double value;
@property (nonatomic, retain) ServerCommunication *server;

- (Money*) initWithCurrencyCode:(NSString*)cCode;

- (NSString*) getCurrency;

- (void) additionValue:(double)addValue;
- (double) convertToCurrency:(NSString*)toCurrency;

- (void) additionValueWithMoney:(Money*)anotherMoney;
- (void) minusMoney:(Money*)anotherMoney;

- (NSNumber*) exchangeRateWithCurrency:(NSString*)toCurrency;
- (BOOL) isGreaterThanMoney:(Money*)anotherMoney;

@end
