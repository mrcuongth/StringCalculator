//
//  Stack.h
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/17/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject{
    NSMutableArray *elements;
}

- (NSInteger) size;
- (void) push:(NSString*)element;
- (NSString*) top;
- (NSString*) pop;

@end
