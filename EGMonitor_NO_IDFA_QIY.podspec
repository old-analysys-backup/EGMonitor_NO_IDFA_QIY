#
#  Be sure to run `pod spec lint EGMonitor_NO_IDFA_QIY.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

 	spec.name         = 'EGMonitor_NO_IDFA_QIY'
  spec.version      = '3.0.4.7.1'
  spec.summary      = '易观方舟iOS版本SDK，爱奇艺定制版'
  spec.homepage     = 'https://github.com/analysys/EGMonitor_NO_IDFA_QIY'
  spec.license      = { :type => 'MIT' }
  spec.authors      = { 'analysys' => 'zhiku@analysys.com.cn' }
  spec.platform 		= :ios, "5.0"
  spec.source       = { :git => "https://github.com/analysys/EGMonitor_NO_IDFA_QIY.git", :tag => spec.version }  
  spec.source_files = 'EGMonitor/*.h'  
  spec.framework    = 'CoreTelephony','SystemConfiguration','AdSupport'
  spec.library   		= 'z'
  spec.vendored_libraries = 'EGMonitor/*.a'
  spec.requires_arc = true

end
