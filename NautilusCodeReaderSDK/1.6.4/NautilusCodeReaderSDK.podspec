Pod::Spec.new do |spec|
  spec.name         = "NautilusCodeReaderSDK"
  spec.version      = "1.6.4"
  spec.summary      = "ModuleApps 2.0 Code Reader SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Code Reader SDK
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
  spec.vendored_frameworks = 'NautilusCodeReaderSDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/CodeReader/Sources/*.{h,m}", "Nautilus-ios-sdk/CodeReader/Sources/**/*.swift", "Nautilus-ios-sdk/CodeReader/Sources/**/*.{h,m}"
  # spec.exclude_files = "Nautilus-ios-sdk/CodeReader/Sources/Exclude"
  # spec.resources = "Nautilus-ios-sdk/CodeReader/Resources/Nautilus.plist", "Nautilus-ios-sdk/CodeReader/Resources/Nautilus_*.plist"

  spec.frameworks = 'Foundation'
  spec.dependency "NautilusCoreSDK", "1.6.4"
  spec.dependency "NautilusContainerSDK", "1.6.4"
  spec.dependency "NautilusLoggingSDK", "1.6.4"

  spec.swift_version = '5.0'
end
