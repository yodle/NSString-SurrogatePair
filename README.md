# NSString-SurrogatePair

[![CocoaPods](https://img.shields.io/cocoapods/v/NSString-SurrogatePair.svg?style=flat-square)](https://cocoapods.org/pods/NSString-SurrogatePair)

An ```NSString``` category to identify and remove surrogate pair UTF-8 characters.
This is to support the unicode character set in [MySQL](https://dev.mysql.com/doc/refman/5.7/en/charset-unicode-utf8.html) which handles a maximum of three bytes per multibyte character.


## Usage


```objectivec
BOOL isIncludingSurrogatePair = [@"✨" isIncludingSurrogatePair];
NSString* removedSurrogatePairString = [@"✨" removedSurrogatePairString];
```


## Install

Use CocoaPods.

```ruby
pod 'NSString-SurrogatePair'
```


## Tests

This project is unit tested and ready for production. To run the tests, open the sample project and run the tests against the sample application target.


## Credits

This is loosely based on another pod: [NSString-RemoveEmoji](https://github.com/woxtu/NSString-RemoveEmoji)


## License

Copyright (c) 2016 Yodle
Licensed under the MIT license.
