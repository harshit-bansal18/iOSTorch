#
# Be sure to run `pod lib lint iOSTorch.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iOSTorch'
  s.version          = '0.1.0'
  s.summary          = 'A short description of iOSTorch.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/harshit-bansal18/iOSTorch'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'harshit-bansal18' => 'harshitb20@iitk.ac.in' }
  s.source           = { :git => 'https://github.com/harshit-bansal18/iOSTorch.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'iOSTorch/**/*.{c,cc,h}'
  s.vendored_libraries = 'iOSTorch/install/lib/*.a'  
  s.user_target_xcconfig = {
        'HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/iOSTorch/install/include/"',
        'OTHER_LDFLAGS' => '-force_load "${PODS_ROOT}/iOSTorch/install/lib/libtorch.a" -force_load "${PODS_ROOT}/iOSTorch/install/lib/libtorch_cpu.a"',
        'CLANG_CXX_LANGUAGE_STANDARD' => 'c++14',
        'CLANG_CXX_LIBRARY' => 'libc++'
    }
  s.pod_target_xcconfig = {
        'HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/iOSTorch/install/include/"',
        'VALID_ARCHS' => 'arm64',
        'ENABLE_BITCODE' => 'YES'

    }
  s.library = ['c++', 'stdc++']
  # s.resource_bundles = {
  #   'iOSTorch' => ['iOSTorch/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
