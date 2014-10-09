Pod::Spec.new do |s|
  s.ios.deployment_target = "5.0"

  s.name         = 'DianruSDK'
  s.version      = '2.7.0'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = 'https://github.com/azaxas128/DianruSDK'
  s.authors      =  { 'Abraham Wang' => '328768132@qq.com' }
  s.summary      = '点入SDK'
  s.source       =  { :git => 'https://github.com/azaxas128/DianruSDK.git'}
  s.requires_arc = true
  #system framework and library
  #s.framework    = 'SystemConfiguration','QuartzCore','CoreTelephony','MessageUI'
  #s.libraries = 'icucore','z.1.2.5','stdc++','sqlite3'

  #s.vendored_frameworks = '*.framework','**/*.framework','**/**/*.framework'
  #s.vendored_libraries = '**/**/*.a'
  #s.resource_bundles = { 'Resource' => ['Core/Resource.bundle/**/*.png'], 'ShareSDKiPadDefaultShareViewUI' => ['UI/ShareSDKiPadDefaultShareViewUI.bundle/**/*.png'],'ShareSDKiPadSimpleShareViewUI' => ['UI/ShareSDKiPadSimpleShareViewUI.bundle/**/*.png'],'ShareSDKiPhoneDefaultShareViewUI' => ['UI/ShareSDKiPhoneDefaultShareViewUI.bundle/**/*.png'],'ShareSDKiPhoneSimpleShareViewUI' => ['UI/ShareSDKiPhoneSimpleShareViewUI.bundle/**/*.png'] }
  #s.source_files = "Extend/**/*.{h,m}"
  #s.resources = ["Core/**/*.strings","**/*.bundle"]

  s.framework = 'QuartzCore','AdSupport','SystemConfiguration','Security','CoreTelephony','AdSupport','CoreLocation'
  s.source_files = "DianRuAdWall.h","TalkingData/*.h"
  s.vendored_libraries = 'libDianRuAdWall.a','TalkingData/*.a'
  s.libraries = 'z'
  s.resource = 'dianru_img/*.*','dianru_img/**/*.*'
end
