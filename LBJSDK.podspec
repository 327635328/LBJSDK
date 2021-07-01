#
# Be sure to run `pod lib lint LBJSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LBJSDK'
  s.version          = '0.1.2'
  s.summary          = 'LBJSDK ObjC通用类库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: ObjC各种通用类库
                       DESC

  s.homepage         = 'https://github.com/x1248399884@163.com/LBJSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'x1248399884@163.com' => 'x128399884@163.com' }
  s.source           = { :git => 'https://github.com/x1248399884@163.com/LBJSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  #s.source_files = 'LBJSDK/Classes/**/*'
  
  s.source_files = 'LBJSDK/Classes/LBJSDK.h'
  s.public_header_files = 'LBJSDK/Classes/LBJSDK.h'
  
  s.subspec 'LBJTableView' do |ss|
    ss.source_files = 'LBJSDK/Classes/LBJTableView/**/*'
    ss.public_header_files = 'LBJSDK/Classes/LBJTableView/*.h'
  end
  s.subspec 'LBJUIKit' do |ss|
    ss.source_files = 'LBJSDK/Classes/LBJUIKit/**/*'
    ss.public_header_files = 'LBJSDK/Classes/LBJUIKit/*.h'
  end
  
  # s.resource_bundles = {
  #   'LBJSDK' => ['LBJSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Masonry'
  s.dependency 'MJRefresh'
  s.dependency 'MJExtension'
  s.dependency 'ReactiveObjC'
  s.dependency 'SDWebImage'
  s.dependency 'AFNetworking'
end
