Pod::Spec.new do |s|
  s.name             = "NSString-SurrogatePair"
  s.version          = "1.0.0"
  s.summary          = "An NSString category to identify and remove surrogate pair UTF-8 characters."
  s.description      = <<-DESC
                       This is to support the unicode character set in MySQL which handles a 
                       maximum of three bytes per multibyte character.
                       This is loosely based on another pod: woxtu/NSString-RemoveEmoji
                       DESC
  s.homepage         = "https://github.com/yodle/NSString-SurrogatePair"
  s.license          = { type: 'Apache 2', file: 'LICENSE' }
  s.author           = { "Yodle" => "iOSDev@yodle.com" }
  s.source           = { :git => "https://github.com/yodle/NSString-SurrogatePair.git", :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
end
