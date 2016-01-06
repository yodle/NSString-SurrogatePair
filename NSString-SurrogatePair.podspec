#
# Be sure to run `pod lib lint NSString-SurrogatePair.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NSString-SurrogatePair"
  s.version          = "0.1.0"
  s.summary          = "Two categories for NSString that allow screening for surrogate pairs."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                       Two categories for NSString that allow screening for emojis and surrogate pairs.
                       This is loosely based on another pod: woxtu/NSString-RemoveEmoji

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC

  s.homepage         = "https://github.com/yodle/NSString-SurrogatePair"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Mark Rogers" => "mark.rogers@yodle.com" }
  s.source           = { :git => "https://github.com/yodle/NSString-SurrogatePair.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'NSString-RemoveEmoji' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
end
