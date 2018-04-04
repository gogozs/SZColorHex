#
#  Be sure to run `pod spec lint SZRefreshControl.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "SZColorHex"
  s.version      = "0.1.0"
  s.summary      = "color hex"
  s.homepage     = "https://github.com/HSK-song/ColorHex"
  s.license      = "MIT"
  s.author       = { "Song Zhou" => "songzhou_hsk@163.com" }
  s.platform     = :ios
  s.ios.deployment_target  = '8.0'
  s.source       = { :git => "https://github.com/HSK-song/ColorHex.git", :tag => "#{s.version}" }
  s.source_files  = "SZColorHex"
  s.requires_arc = true
end
