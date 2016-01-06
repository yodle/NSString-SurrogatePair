# NSString-SurrogatePair

[![CocoaPods](https://img.shields.io/cocoapods/v/NSString+SurrogatePair.svg?style=flat-square)](https://cocoapods.org/pods/NSString+SurrogatePair)

NSString category to identify and remove surrogate pair UTF-8 characters

## Usage

```objectivec
BOOL isIncludingSurrogatePair = [@"✨" isIncludingSurrogatePair];
NSString* removedSurrogatePairString = [@"✨" removedSurrogatePairString];
```

## Install

Use CocoaPods.

```ruby
pod 'NSString+SurrogatePair'
```

## License

Copyright (c) 2016 Yodle
Licensed under the MIT license.
