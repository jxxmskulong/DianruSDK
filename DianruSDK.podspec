Pod::Spec.new do |s|
  s.ios.deployment_target = "5.0"

  s.name         = 'DianruSDK'
  s.version      = '3.0.0'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = 'https://github.com/shijian3011/DianruSDK'
  s.authors      =  { 'Health Shi' => 'shijian3011@qq.com' }
  s.summary      = '点入SDK'
  s.source       =  { :git => 'https://github.com/shijian3011/DianruSDK.git'}
  s.requires_arc = true
  #system framework and library
  #s.framework    = 'SystemConfiguration','QuartzCore','CoreTelephony','MessageUI'
  #s.libraries = 'icucore','z.1.2.5','stdc++','sqlite3'

  #s.vendored_frameworks = '*.framework','**/*.framework','**/**/*.framework'
  #s.vendored_libraries = '**/**/*.a'
  #s.resource_bundles = { 'Resource' => ['Core/Resource.bundle/**/*.png'], 'ShareSDKiPadDefaultShareViewUI' => ['UI/ShareSDKiPadDefaultShareViewUI.bundle/**/*.png'],'ShareSDKiPadSimpleShareViewUI' => ['UI/ShareSDKiPadSimpleShareViewUI.bundle/**/*.png'],'ShareSDKiPhoneDefaultShareViewUI' => ['UI/ShareSDKiPhoneDefaultShareViewUI.bundle/**/*.png'],'ShareSDKiPhoneSimpleShareViewUI' => ['UI/ShareSDKiPhoneSimpleShareViewUI.bundle/**/*.png'] }
  #s.source_files = "Extend/**/*.{h,m}"
  #s.resources = ["Core/**/*.strings","**/*.bundle"]

  s.framework = 'QuartzCore','CoreLocation','Security','CoreTelephony','SystemConfiguration','MapKit','MediaPlayer','CoreGraphics','AdSupport'
  s.source_files = "dianruSDK/*.h"
  s.vendored_libraries = 'dianruSDK/*.a'
  s.libraries = 'z.1'
  #s.resource = 'dianru_img/*.*','dianru_img/**/*.*'
end
