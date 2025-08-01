Pod::Spec.new do |spec|
  spec.name         = "NautilusCouponSDK"
  spec.version      = "1.19.2"
  spec.summary      = "ModuleApps 2.0 Coupon Component SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Coupon Component SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "15.0"

  if ENV.has_key?('NAUTILUS_DEVELOP') then
    # Setting for development
    spec.source         = { :git => '' }
    spec.source_files  = "Nautilus-ios-sdk/Coupon/Sources/*.{h,m}", "Nautilus-ios-sdk/Coupon/Sources/**/*.swift", "Nautilus-ios-sdk/Coupon/Sources/**/*.{h,m}"
    spec.exclude_files = "Nautilus-ios-sdk/Coupon/Sources/Exclude"
    spec.resources = "Nautilus-ios-sdk/Coupon/Resources/moduleapps-coupon.json", "Nautilus-ios-sdk/Coupon/Sources/**/*.xib", "Nautilus-ios-sdk/Coupon/Sources/**/*.xcdatamodeld", "Nautilus-ios-sdk/Coupon/Resources/Assets.xcassets"
  else
    # Setting for release
    spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
    spec.vendored_frameworks = 'NautilusCouponSDK.xcframework'
  end

  spec.frameworks = 'Foundation'
  spec.dependency "NautilusCoreSDK", "#{spec.version}"
  spec.dependency "NautilusContainerSDK", "#{spec.version}"
  spec.dependency "NautilusConfigSDK", "#{spec.version}"
  spec.dependency "NautilusIdentifySDK", "#{spec.version}"
  spec.dependency "NautilusImagingSDK", "#{spec.version}"
  spec.dependency "NautilusAnalyticsSDK", "#{spec.version}"
  spec.dependency "NautilusLoggingSDK", "#{spec.version}"
  spec.dependency "NautilusUISDK", "#{spec.version}"
  spec.dependency "NautilusServerTimeSDK", "#{spec.version}"

  spec.swift_version = '5.0'
end
