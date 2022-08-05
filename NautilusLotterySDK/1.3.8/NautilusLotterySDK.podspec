Pod::Spec.new do |spec|
  spec.name         = "NautilusLotterySDK"
  spec.version      = "1.3.8"
  spec.summary      = "ModuleApps 2.0 Lottery Component SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Lottery Component SDK
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
  spec.vendored_frameworks = 'NautilusLotterySDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/Lottery/Sources/*.{h,m}", "Nautilus-ios-sdk/Lottery/Sources/**/*.swift", "Nautilus-ios-sdk/Lottery/Sources/**/*.{h,m}"
  # spec.exclude_files = "Nautilus-ios-sdk/Lottery/Sources/Exclude"
  # spec.resources = "Nautilus-ios-sdk/Lottery/Resources/moduleapps-lottery.json", "Nautilus-ios-sdk/Lottery/Sources/**/*.xib", "Nautilus-ios-sdk/Lottery/Sources/**/*.xcdatamodeld", "Nautilus-ios-sdk/Lottery/Resources/Assets.xcassets"

  spec.frameworks = 'Foundation'
  spec.dependency "NautilusCoreSDK", "1.3.8"
  spec.dependency "NautilusContainerSDK", "1.3.8"
  spec.dependency "NautilusConfigSDK", "1.3.8"
  spec.dependency "NautilusIdentifySDK", "1.3.8"
  spec.dependency "NautilusLoggingSDK", "1.3.8"
  spec.dependency "NautilusImagingSDK", "1.3.8"
  spec.dependency "NautilusAnalyticsSDK", "1.3.8"

  spec.swift_version = '5.0'
end
