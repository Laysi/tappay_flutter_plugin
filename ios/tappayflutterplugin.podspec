#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint tappayflutterplugin.podspec' to validate before publishing.
#
pubspec = YAML.load_file(File.join('..', 'pubspec.yaml'))
library_version = pubspec['version'].gsub('+', '-')


Pod::Spec.new do |s|
  s.name             = pubspec['name']
  s.version          = library_version
  s.summary          = pubspec['description']
  s.description      = pubspec['description']

  s.homepage         = pubspec['homepage']
  s.license          = { :file => '../LICENSE' }
  s.author           = 'tappay_flutter_plugin authors'
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig= {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.swift_version = '5.0'
  s.vendored_frameworks = 'TPDirect.framework', 'WebKit.framework', 'SafariServices.framework'
  s.resources         = "TPDirectResource/Image/*"
  s.frameworks = 'WebKit', 'SafariServices'
end
