Pod::Spec.new do |spec|
  spec.name         = "NautilusInAppMessageSDK"
  spec.version      = "1.2.0-beta"
  spec.summary      = "ModuleApps 2.0 In-App Message SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 In-App Message SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "11.0"

  # Setting for development
  # spec.source         = { :git => '' }
  # Setting for release
  spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = 'NautilusInAppMessageSDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/InAppMessage/Sources/*.{h,m}", "Nautilus-ios-sdk/InAppMessage/Sources/**/*.swift", "Nautilus-ios-sdk/InAppMessage/Sources/**/*.{h,m}"
  # spec.exclude_files = "Nautilus-ios-sdk/InAppMessage/Sources/Exclude"
  # spec.resources = "Nautilus-ios-sdk/InAppMessage/Sources/**/*.xib", "Nautilus-ios-sdk/InAppMessage/Sources/**/*.xcdatamodeld", "Nautilus-ios-sdk/InAppMessage/Resources/Assets.xcassets", "Nautilus-ios-sdk/InAppMessage/Resources/moduleapps-inappmessage.json"

  spec.frameworks = 'Foundation', 'CoreData'
  spec.dependency "NautilusCoreSDK", "1.2.0-beta"
  spec.dependency "NautilusContainerSDK", "1.2.0-beta"
  spec.dependency "NautilusConfigSDK", "1.2.0-beta"
  spec.dependency "NautilusIdentifySDK", "1.2.0-beta"
  spec.dependency "NautilusAnalyticsSDK", "1.2.0-beta"
  spec.dependency "NautilusImagingSDK", "1.2.0-beta"
  spec.dependency "NautilusLoggingSDK", "1.2.0-beta"
  spec.dependency "NautilusUISDK", "1.2.0-beta"

  spec.swift_version = '5.0'

  # Setting for development
  # spec.xcconfig = {
  #   'OTHER_SWIFT_FLAGS' => '$(inherited) -D DISABLE_DEEPLINK'
  # }
end
