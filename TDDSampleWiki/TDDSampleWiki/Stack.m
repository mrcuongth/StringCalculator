//
//  Stack.m
//  TDDSampleWiki
//
//  Created by Trinh Huy Cuong  on 6/17/13.
//  Copyright (c) 2013 QSoftVietNam. All rights reserved.
//

#import "Stack.h"

@implementation Stack

- (Stack*) init{
    self = [super init];
    
    elements = [[NSMutableArray alloc] init];
    
    return self;
}

- (NSInteger) size{
    return [elements count];
}

- (NSString*) pop{
    if (![elements count]) {
        @throw [NSException exceptionWithName:@"StackEmptyException" reason:@"StackEmptyException message" userInfo:nil];
    }

    NSString *result = [elements lastObject];
    [elements removeLastObject];
    
    return result;
}

- (void) push:(NSString*)element{
    [elements addObject:element];
}

- (NSString*) top{
    return [elements lastObject];
}

@end




































