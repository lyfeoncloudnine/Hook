#
# Be sure to run `pod lib lint Hook.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Hook'
  s.version          = '1.0.6'
  s.summary          = 'Hook makes code based autolayout simple and faster through chaining.'
  s.homepage         = 'https://github.com/lyfeoncloudnine/Hook'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lyfeoncloudnine' => 'lyfeoncloudnine@gmail.com' }
  s.source           = { :git => 'https://github.com/lyfeoncloudnine/Hook.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'Sources/Hook/*'
end
