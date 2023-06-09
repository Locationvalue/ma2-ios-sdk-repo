Pod::Spec.new do |spec|
  spec.name         = "NautilusUISDK"
  spec.version      = "1.7.7"
  spec.summary      = "ModuleApps 2.0 UI Component SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 UI Component SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"

  if ENV.has_key?('NAUTILUS_DEVELOP') then
    # Setting for development
    spec.source         = { :git => '' }
    spec.source_files  = "Nautilus-ios-sdk/UI/Sources/*.{h,m}", "Nautilus-ios-sdk/UI/Sources/**/*.swift"
    spec.exclude_files = "Nautilus-ios-sdk/UI/Sources/Exclude"
    spec.resources = "Nautilus-ios-sdk/UI/Resources/moduleapps-ui-components.json", "Nautilus-ios-sdk/UI/Resources/Nautilus.plist", "Nautilus-ios-sdk/UI/Resources/Nautilus_*.plist", "Nautilus-ios-sdk/UI/Resources/Assets.xcassets", "Nautilus-ios-sdk/UI/Sources/**/*.xib"
  else
    # Setting for release
    spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
    spec.vendored_frameworks = 'NautilusUISDK.xcframework'
  end

  spec.frameworks = 'Foundation'
  spec.dependency "NautilusCoreSDK", "1.7.7"
  spec.dependency "NautilusConfigSDK", "1.7.7"
  spec.dependency "NautilusAnalyticsSDK", "1.7.7"
  spec.dependency "NautilusLoggingSDK", "1.7.7"

  spec.swift_version = '5.0'
end
