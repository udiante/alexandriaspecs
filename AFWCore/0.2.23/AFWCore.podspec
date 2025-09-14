Pod::Spec.new do |s|

s.name                      = "AFWCore"
s.module_name               = "AFWCore"
s.version                   = "0.2.23"
s.summary                   = "#{s.module_name}"
s.description               = <<-DESC "#{s.module_name} Alexandria Core Framework"
DESC

s.homepage                  = "https://github.com/udiante/AFWCore.git"
s.license                   = "Commercial"
s.author                    = "Alejandro Q"


# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.platform                  = :ios, "15.0"
s.xcconfig                  = { 'ENABLE_BITCODE' => 'YES', 'VALID_ARCHS' => 'i386 x86_64 armv7 armv7s arm64 arm64e arm64-ios-simulator'}
s.swift_version             = "5.0"
s.static_framework = true #required to FB analytics

# --- Source Location -----------------------------------------------------------#
s.source                    = { :git => "https://github.com/udiante/AFWCore.git", :tag => s.version }

s.source_files  = "#{s.module_name}", "#{s.module_name}/**/*.{h,m,swift}"

#s.resources = [ "#{s.module_name}/**/*.{png,jpeg,jpg,storyboard,xib,json,html}" , "#{s.module_name}/**/*.{xcassets,imageset,json}", "#{s.module_name}/Localization/*.lproj"]

s.resource_bundles = {
    'AFWCore_Resources' =>  [ "#{s.module_name}/**/*.{png,jpeg,jpg,storyboard,xib,json,html}" , "#{s.module_name}/**/*.{xcassets,imageset,json}", "#{s.module_name}/Localization/*.lproj"],
}

s.exclude_files = [ '#{s.module_name}/Exclude/, #{s.module_name}/Info.plist, README.md']


# ――― Dependencies ――――――――――――――――――――――――――――――――――――――――――――――――――---―――――――― #

s.dependency 'Alamofire', '~>5.9.0'
s.dependency 'KeychainSwift', '~>20.0.0'

# Base VC
s.dependency 'Loaf', '~>0.5.0'
s.dependency 'lottie-ios', '~>4.1'

# FireBase
s.dependency 'Firebase', '~>11.9'
s.dependency 'Firebase/Core'
s.dependency 'Firebase/Analytics'
s.dependency 'Firebase/Crashlytics'
s.dependency 'Firebase/RemoteConfig'
s.dependency 'Firebase/Performance'

# Tracking dependencies
s.dependency 'Mixpanel-swift'

end

