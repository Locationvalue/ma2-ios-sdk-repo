Pod::Spec.new do |spec|
  spec.name         = "NautilusContainerSDK"
  spec.version      = "1.6.3"
  spec.summary      = "ModuleApps 2.0 Module Container System SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Module Container System SDK
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
  spec.vendored_frameworks = 'NautilusContainerSDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/Container/Sources/*.{h,m}", "Nautilus-ios-sdk/Container/Sources/**/*.swift"
  # spec.exclude_files = "Nautilus-ios-sdk/Container/Sources/Exclude"

  spec.frameworks = 'Foundation'

  spec.swift_version = '5.0'
end
