Pod::Spec.new do |spec|
  spec.name         = "NautilusContentSDK"
  spec.version      = "1.4.0"
  spec.summary      = "ModuleApps 2.0 Content Component SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Content Component SDK
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
  spec.vendored_frameworks = 'NautilusContentSDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/Content/Sources/*.{h,m}", "Nautilus-ios-sdk/Content/Sources/**/*.swift", "Nautilus-ios-sdk/Content/Sources/**/*.{h,m}", "Nautilus-ios-sdk/Content/Sources/**/*.storyboard"
  # spec.exclude_files = "Nautilus-ios-sdk/Content/Sources/Exclude"
  # spec.resources = "Nautilus-ios-sdk/Content/Resources/moduleapps-contents.json", "Nautilus-ios-sdk/Content/Sources/**/*.xib", "Nautilus-ios-sdk/Content/Sources/**/*.xcdatamodeld", "Nautilus-ios-sdk/Content/Resources/Assets.xcassets"

  spec.frameworks = 'Foundation'
  spec.dependency "NautilusCoreSDK", "1.4.0"
  spec.dependency "NautilusContainerSDK", "1.4.0"
  spec.dependency "NautilusConfigSDK", "1.4.0"
  spec.dependency "NautilusIdentifySDK", "1.4.0"
  spec.dependency "NautilusImagingSDK", "1.4.0"
  spec.dependency "NautilusAnalyticsSDK", "1.4.0"
  spec.dependency "NautilusLoggingSDK", "1.4.0"
  spec.dependency "NautilusUISDK", "1.4.0"

  spec.swift_version = '5.0'
end
