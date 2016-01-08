//
//  NSString+SurrogatePair.m
//  NSString+SurrogatePair
//
//  Created by Mark Rogers on 7/28/15.
//  Copyright (c) 2016 Yodle. 
//

#import "NSString+SurrogatePair.h"

@implementation NSString (SurrogatePair)

- (instancetype)stringByRemovingSurrogatePairs
{
	NSMutableString* __block buffer = [NSMutableString stringWithCapacity:[self length]];
	
	[self enumerateSubstringsInRange:NSMakeRange(0, [self length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock: ^(NSString* substring, NSRange substringRange, NSRange enclosingRange, BOOL* stop) {
		[buffer appendString:([substring isSurrogatePair]) ? @"" : substring];
	}];
	
	return buffer;
}

- (BOOL)containsSurrogatePair
{
	BOOL __block result = NO;
	
	[self enumerateSubstringsInRange:NSMakeRange(0, [self length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock: ^(NSString* substring, NSRange substringRange, NSRange enclosingRange, BOOL* stop) {
		if ([substring isSurrogatePair]) {
			*stop = YES;
			result = YES;
		}
	}];
	
	return result;
}

#pragma mark - Private

- (BOOL)isSurrogatePair
{
	const unichar unicodeSurrogatePairThreshold = [self characterAtIndex:0];
	
	return (0xd800 <= unicodeSurrogatePairThreshold);
}

@end
