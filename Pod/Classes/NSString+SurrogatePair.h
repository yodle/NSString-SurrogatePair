//
//  NSString+SurrogatePair.h
//  NSString+SurrogatePair
//
//  Created by Mark Rogers on 7/28/15.
//  Copyright (c) 2015 Mark Rogers. All rights reserved.
//

@interface NSString (SurrogatePair)

- (instancetype)stringByRemovingSurrogatePairs;
- (BOOL)containsSurrogatePair;

@end
