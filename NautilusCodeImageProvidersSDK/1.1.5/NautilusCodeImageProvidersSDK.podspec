Pod::Spec.new do |spec|
  spec.name         = "NautilusCodeImageProvidersSDK"
  spec.version      = "1.1.5"
  spec.summary      = "ModuleApps 2.0 Barcode image generation SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Barcode image generation SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"

  # Setting for development
  # spec.source         = { :git => '' }
  # Setting for release
  spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = 'NautilusCodeImageProvidersSDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/CodeImageProviders/Sources/*.{h,m}", "Nautilus-ios-sdk/CodeImageProviders/Sources/**/*.swift", "Nautilus-ios-sdk/CodeImageProviders/Sources/**/*.{h,m}"
  # spec.exclude_files = "Nautilus-ios-sdk/CodeImageProviders/Sources/Exclude"
  # spec.resources = "Nautilus-ios-sdk/CodeImageProviders/Resources/Nautilus.plist", "Nautilus-ios-sdk/CodeImageProviders/Resources/Nautilus_*.plist"

  spec.frameworks = 'Foundation'
  spec.dependency 'ZXingObjC', '~> 3.6.5'
  spec.dependency "NautilusCoreSDK", "1.1.5"
  spec.dependency "NautilusContainerSDK", "1.1.5"
  spec.dependency "NautilusIdentifySDK", "1.1.5"
  spec.dependency "NautilusLoggingSDK", "1.1.5"

  spec.swift_version = '5.0'
end
