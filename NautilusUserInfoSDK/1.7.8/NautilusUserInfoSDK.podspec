Pod::Spec.new do |spec|
  spec.name         = "NautilusUserInfoSDK"
  spec.version      = "1.7.8"
  spec.summary      = "ModuleApps 2.0 User Infomation Management SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 User Infomation Management SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"

  if ENV.has_key?('NAUTILUS_DEVELOP') then
    # Setting for development
    spec.source         = { :git => '' }
    spec.source_files  = "Nautilus-ios-sdk/UserInfo/Sources/*.{h,m}", "Nautilus-ios-sdk/UserInfo/Sources/**/*.swift", "Nautilus-ios-sdk/UserInfo/Sources/**/*.{h,m}"
    spec.exclude_files = "Nautilus-ios-sdk/UserInfo/Sources/Exclude"
    spec.resources = "Nautilus-ios-sdk/UserInfo/Resources/moduleapps-userinfo.json", "Nautilus-ios-sdk/UserInfo/Resources/Assets.xcassets", "Nautilus-ios-sdk/UserInfo/Sources/**/*.xib"
  else
    # Setting for release
    spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
    spec.vendored_frameworks = 'NautilusUserInfoSDK.xcframework'
  end

  spec.frameworks = 'Foundation'
  spec.dependency "NautilusCoreSDK", "1.7.8"
  spec.dependency "NautilusConfigSDK", "1.7.8"
  spec.dependency "NautilusContainerSDK", "1.7.8"
  spec.dependency "NautilusIdentifySDK", "1.7.8"
  spec.dependency "NautilusAnalyticsSDK", "1.7.8"
  spec.dependency "NautilusLoggingSDK", "1.7.8"
  spec.dependency "NautilusGeoUtilSDK", "1.7.8"

  spec.swift_version = '5.0'
end
