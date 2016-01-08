//
//  NSStringRemoveSurrogatePairTests.m
//  NSString-RemoveSurrogatePair
//
//  Created by Mark Rogers on 7/28/15.
//  Copyright (c) 2015 Yodle. 
//

#import <XCTest/XCTest.h>
#import "NSString+SurrogatePair.h"

@interface NSStringRemoveSurrogatePairTests : XCTestCase

@end

@implementation NSStringRemoveSurrogatePairTests

- (void)testContainsSurrogate
{
	XCTAssertFalse([@"Text ☺️" containsSurrogatePair]);
	XCTAssert([@"🌍" containsSurrogatePair]);
	XCTAssert([@"🌍Text ☺️" containsSurrogatePair]);
}

- (void)testRemovedSurrogateString
{
	XCTAssert([[@"Text ☺️" stringByRemovingSurrogatePairs] isEqualToString:@"Text ☺️"]);
	XCTAssert([[@"🌍" stringByRemovingSurrogatePairs] isEqualToString:@""]);
	XCTAssert([[@"🌍Text ☺️" stringByRemovingSurrogatePairs] isEqualToString:@"Text ☺️"]);
}

- (void)testFirstNonSurrogatePairEmojiIsNotSurrogatePair
{
	NSString* unicodeString = [NSString stringWithUTF8String:"\U00002100"]; // ℀
	XCTAssertFalse([unicodeString containsSurrogatePair]);
	XCTAssertFalse([[unicodeString stringByRemovingSurrogatePairs] isEqualToString:@""]);
}

- (void)testLastNonSurrogatePairEmojiIsNotSurrogatePair
{
	NSString* unicodeString = [NSString stringWithUTF8String:"\U000027BF"]; // ➿
	XCTAssertFalse([unicodeString containsSurrogatePair]);
	XCTAssertFalse([[unicodeString stringByRemovingSurrogatePairs] isEqualToString:@""]);
}

- (void)testLastNonSurrogateCharacterIsNotSurrogatePair
{
	NSString* unicodeString = [NSString stringWithUTF8String:"\U0000D7FF"]; // ퟿
	XCTAssertFalse([unicodeString containsSurrogatePair]);
	XCTAssertFalse([[unicodeString stringByRemovingSurrogatePairs] isEqualToString:@""]);
}

- (void)testFirstSurrogatePairUnicodeCharacterIsSurrogatePair
{
	NSString* unicodeString = [NSString stringWithUTF8String:"\U0000E000"]; // 
	XCTAssert([unicodeString containsSurrogatePair]);
	XCTAssert([[unicodeString stringByRemovingSurrogatePairs] isEqualToString:@""]);
}

- (void)testFirstThreeByteUnicodeCharacterIsSurrogatePair
{
	NSString* unicodeString = [NSString stringWithUTF8String:"\U00010000"]; // 𐀀
	NSLog(@"\n\nUnicode: %@\n\n",unicodeString);
	XCTAssert([unicodeString containsSurrogatePair]);
	XCTAssert([[unicodeString stringByRemovingSurrogatePairs] isEqualToString:@""]);
}

- (void)testLowestUnicodeValueEmojiIsSurrogatePair
{
	NSString* unicodeString = [NSString stringWithUTF8String:"\U0001F004"]; // 🀄️
	XCTAssert([unicodeString containsSurrogatePair]);
	XCTAssert([[unicodeString stringByRemovingSurrogatePairs] isEqualToString:@""]);
}

@end
