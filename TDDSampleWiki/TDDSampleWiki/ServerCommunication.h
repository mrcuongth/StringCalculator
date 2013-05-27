//
//  SeverCommunication.h
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 5/27/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServerCommunication : NSObject

- (NSNumber*) getExchangeRateOfCurrency:(NSString*)c1 andCurrency:(NSString*)c2;

@end
