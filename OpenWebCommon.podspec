Pod::Spec.new do |s|
  s.name             = 'OpenWebCommon'
  s.version          = '1.0.0'
  s.summary          = 'OpenWeb Common SDK'
  s.description      = 'OpenWeb Common SDK for OpenWebSDK'
  s.homepage        = "https://www.openweb.com"
  s.screenshots     = 'https://github.com/SpotIM/spotim-ios-sdk-pod/assets/8794663/b451b791-92fc-4946-be64-00531d216fd3'
  s.license         = { :type => 'CUSTOM', :file => 'LICENSE' }
  s.author          = { 'Alon Shprung' => 'alon.shprung@openweb.com' }
  s.platform        = :ios
  s.ios.deployment_target = '13.0'
  s.source          = { :git => 'https://github.com/SpotIM/openweb-ios-common-sdk-pod.git', :tag => s.version.to_s }

  s.ios.vendored_frameworks = 'OpenWebCommon.xcframework'
end