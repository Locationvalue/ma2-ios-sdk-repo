Pod::Spec.new do |spec|
  spec.name         = "NautilusShopSDK"
  spec.version      = "1.18.3"
  spec.summary      = "ModuleApps 2.0 Shop Component SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Shop Component SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "15.0"

  if ENV.has_key?('NAUTILUS_DEVELOP') then
    # Setting for development
    spec.source         = { :git => '' }
    spec.source_files  = "Nautilus-ios-sdk/Shop/Sources/*.{h,m}", "Nautilus-ios-sdk/Shop/Sources/**/*.swift", "Nautilus-ios-sdk/Shop/Sources/**/*.{h,m}"
    spec.exclude_files = "Nautilus-ios-sdk/Shop/Sources/Exclude"
    spec.resources = "Nautilus-ios-sdk/Shop/Resources/moduleapps-shop.json", "Nautilus-ios-sdk/Shop/Resources/*.xcdatamodeld", "Nautilus-ios-sdk/Shop/Resources/Assets.xcassets"
  else
    # Setting for release
    spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
    spec.vendored_frameworks = 'NautilusShopSDK.xcframework'
  end

  spec.frameworks = 'Foundation', 'CoreData'
  spec.dependency "NautilusCoreSDK", "#{spec.version}"
  spec.dependency "NautilusConfigSDK", "#{spec.version}"
  spec.dependency "NautilusContainerSDK", "#{spec.version}"
  spec.dependency "NautilusIdentifySDK", "#{spec.version}"
  spec.dependency "NautilusImagingSDK", "#{spec.version}"
  spec.dependency "NautilusAnalyticsSDK", "#{spec.version}"
  spec.dependency "NautilusLoggingSDK", "#{spec.version}"
  spec.dependency "NautilusUISDK", "#{spec.version}"
  spec.dependency "NautilusGeoUtilSDK", "#{spec.version}"

  spec.swift_version = '5.0'
end
