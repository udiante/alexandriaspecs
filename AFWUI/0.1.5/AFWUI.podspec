#
# Be sure to run `pod lib lint AFWUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'AFWUI'
s.module_name      = "AFWUI"
s.version          = '0.1.5'
s.summary          = 'Framework de vistas customizadas para SwiftUI con la última tecnología'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = '<<-DESC
    Framework de vistas customizadas para SwiftUI con la última tecnología, pensado para la migración progresiva de las apps a SwiftUI
DESC'

s.swift_version             = "5.0"
s.homepage         = 'https://github.com/udiante/AFWUI'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = "Alejandro Q"
s.source           = { :git => 'https://github.com/udiante/AFWUI.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '16.0'

s.source_files  = "#{s.module_name}", "#{s.module_name}/**/*.{h,m,swift}"
s.exclude_files = [ '#{s.module_name}/Exclude/, #{s.module_name}/Info.plist, README.md, LICENSE']

s.resource_bundles = {
   'AFWUI_Resources' => ["#{s.module_name}/**/*.{png,jpeg,jpg,storyboard,xib,json,html,xcstrings,lproj}" , "#{s.module_name}/**/*.{xcassets,imageset,json}", "#{s.module_name}/Localization/*.lproj"]
}

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
