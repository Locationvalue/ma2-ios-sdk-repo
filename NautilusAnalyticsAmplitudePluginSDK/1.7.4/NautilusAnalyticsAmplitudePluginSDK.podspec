Pod::Spec.new do |spec|
  spec.name         = "NautilusAnalyticsAmplitudePluginSDK"
  spec.version      = "1.7.4"
  spec.summary      = "ModuleApps 2.0 Analytics Amplitude Plugin SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Analytics Amplitude Plugin SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"

  if ENV.has_key?('NAUTILUS_DEVELOP') then
    # Setting for development
    spec.source         = { :git => '' }
    spec.source_files  = "Nautilus-ios-sdk/AnalyticsAmplitudePlugin/Sources/*.{h,m}", "Nautilus-ios-sdk/AnalyticsAmplitudePlugin/Sources/**/*.swift", "Nautilus-ios-sdk/AnalyticsAmplitudePlugin/Sources/**/*.{h,m}"
    spec.exclude_files = "Nautilus-ios-sdk/AnalyticsAmplitudePlugin/Sources/Exclude"
    spec.resources = "Nautilus-ios-sdk/AnalyticsAmplitudePlugin/Resources/Nautilus.plist", "Nautilus-ios-sdk/AnalyticsAmplitudePlugin/Resources/Nautilus_*.plist"
  else
    # Setting for release
    spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
    spec.vendored_frameworks = 'NautilusAnalyticsAmplitudePluginSDK.xcframework'
  end

  spec.frameworks = 'Foundation'
  spec.dependency "Amplitude", "~> 8.12.0"
  spec.dependency "NautilusCoreSDK", "1.7.4"
  spec.dependency "NautilusContainerSDK", "1.7.4"
  spec.dependency "NautilusIdentifySDK", "1.7.4"
  spec.dependency "NautilusLoggingSDK", "1.7.4"
  spec.dependency "NautilusAnalyticsSDK", "1.7.4"

  spec.swift_version = '5.0'
end
