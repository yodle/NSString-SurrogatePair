//
//  NSString+SurrogatePair.h
//  NSString+SurrogatePair
//
//  Created by Mark Rogers on 7/28/15.
//  Copyright (c) 2016 Yodle. 
//

@interface NSString (SurrogatePair)

- (instancetype)stringByRemovingSurrogatePairs;
- (BOOL)containsSurrogatePair;

@end
