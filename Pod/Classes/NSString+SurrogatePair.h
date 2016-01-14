//
//  NSString+SurrogatePair.h
//  NSString+SurrogatePair
//
//  Created by Mark Rogers on 7/28/15.
//  Copyright (c) 2016 Yodle. 
//

@interface NSString (SurrogatePair)

/**
 *  Filters all surrogate pair characters out of the string.
 *
 *  @return NSString	An exact replica of the original string, without any surrogate pair characters
 */
- (instancetype)stringByRemovingSurrogatePairs;

/**
 *  Determines whether or not a string contains any surrogate pair characters.
 *
 *  @return BOOL	Indicates if the string does contain at least one surrogate pair character.
 */
- (BOOL)containsSurrogatePair;

@end
