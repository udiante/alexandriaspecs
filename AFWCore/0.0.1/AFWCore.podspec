Pod::Spec.new do |s|

s.name                      = "AFWCore"
s.module_name               = "AFWCore"
s.version                   = "0.0.1"
s.summary                   = "#{s.module_name}"
s.description               = <<-DESC "#{s.module_name} Alexandria Core Framework"
DESC

s.homepage                  = "https://github.com/udiante/AFWCore.git"
s.license                   = "Commercial"
s.author                    = "Alejandro Quibus"


# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.platform                  = :ios, "13.0"
s.xcconfig                  = { 'ENABLE_BITCODE' => 'YES', 'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64 arm64e'}
s.swift_version             = "5.0"

# --- Source Location -----------------------------------------------------------#
s.source                    = { :git => "https://github.com/udiante/AFWCore.git", :tag => s.version }

s.source_files  = "#{s.module_name}", "#{s.module_name}/**/*.{h,m,swift}"

s.resources = [ "#{s.module_name}/**/*.{png,jpeg,jpg,storyboard,xib,json,html}" , "#{s.module_name}/**/*.{xcassets,imageset,json}", "#{s.module_name}/Localization/*.lproj"]

s.exclude_files = [ '#{s.module_name}/Exclude/, #{s.module_name}/Info.plist, README.md']


# ――― Dependencies ――――――――――――――――――――――――――――――――――――――――――――――――――---―――――――― #
s.dependency 'Alamofire', '~>5.2.2'
s.dependency 'KeychainSwift', '~>19.0.0'

end

