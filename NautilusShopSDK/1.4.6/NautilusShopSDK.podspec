Pod::Spec.new do |spec|
  spec.name         = "NautilusShopSDK"
  spec.version      = "1.4.6"
  spec.summary      = "ModuleApps 2.0 Shop Component SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Shop Component SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"

  # Setting for development
  # spec.source         = { :git => '' }
  # Setting for release
  spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = 'NautilusShopSDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/Shop/Sources/*.{h,m}", "Nautilus-ios-sdk/Shop/Sources/**/*.swift", "Nautilus-ios-sdk/Shop/Sources/**/*.{h,m}"
  # spec.exclude_files = "Nautilus-ios-sdk/Shop/Sources/Exclude"
  # spec.resources = "Nautilus-ios-sdk/Shop/Resources/moduleapps-shop.json", "Nautilus-ios-sdk/Shop/Resources/*.xcdatamodeld", "Nautilus-ios-sdk/Shop/Resources/Assets.xcassets"

  spec.frameworks = 'Foundation', 'CoreData'
  spec.dependency "NautilusCoreSDK", "1.4.6"
  spec.dependency "NautilusConfigSDK", "1.4.6"
  spec.dependency "NautilusContainerSDK", "1.4.6"
  spec.dependency "NautilusConfigSDK", "1.4.6"
  spec.dependency "NautilusIdentifySDK", "1.4.6"
  spec.dependency "NautilusImagingSDK", "1.4.6"
  spec.dependency "NautilusAnalyticsSDK", "1.4.6"
  spec.dependency "NautilusLoggingSDK", "1.4.6"
  spec.dependency "NautilusUISDK", "1.4.6"
  spec.dependency "NautilusGeoUtilSDK", "1.4.6"

  spec.swift_version = '5.0'
end
