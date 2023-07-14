Pod::Spec.new do |spec|
  spec.name         = "NautilusStampUISDK"
  spec.version      = "1.7.12"
  spec.summary      = "ModuleApps 2.0 StampUI SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 StampUI SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"

  if ENV.has_key?('NAUTILUS_DEVELOP') then
    # Setting for development
    spec.source         = { :git => '' }
    spec.source_files  = "Nautilus-ios-sdk/StampUI/Sources/*.{h,m}", "Nautilus-ios-sdk/StampUI/Sources/**/*.swift", "Nautilus-ios-sdk/StampUI/Sources/**/*.{h,m}"
    spec.exclude_files = "Nautilus-ios-sdk/StampUI/Sources/Exclude"
    spec.resources = "Nautilus-ios-sdk/StampUI/Resources/moduleapps-stampcard-ui.json", "Nautilus-ios-sdk/StampUI/Resources/Assets.xcassets", "Nautilus-ios-sdk/StampUI/Sources/**/*.xib", "Nautilus-ios-sdk/StampUI/Sources/**/*.storyboard"
  else
    # Setting for release
    spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
    spec.vendored_frameworks = 'NautilusStampUISDK.xcframework'
  end

  spec.frameworks = 'Foundation'
  spec.dependency "NautilusAnalyticsSDK", "1.7.12"
  spec.dependency "NautilusConfigSDK", "1.7.12"
  spec.dependency "NautilusContainerSDK", "1.7.12"
  spec.dependency "NautilusCoreSDK", "1.7.12"
  spec.dependency "NautilusStampSDK", "1.7.12"
  spec.dependency "NautilusCodeReaderSDK", "1.7.12"
  spec.dependency "NautilusUISDK", "1.7.12"
  spec.dependency "NautilusServerTimeSDK", "1.7.12"
  spec.dependency "NautilusImagingSDK", "1.7.12"

  spec.swift_version = '5.0'
end
