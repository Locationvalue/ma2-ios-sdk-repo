Pod::Spec.new do |spec|
  spec.name         = "NautilusCoreSDK"
  spec.version      = "1.3.15"
  spec.summary      = "ModuleApps 2.0 Core SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Core SDK
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
  spec.vendored_frameworks = 'NautilusCoreSDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/Core/Sources/*.{h,m}", "Nautilus-ios-sdk/Core/Sources/**/*.swift", "Nautilus-ios-sdk/Core/Sources/**/*.{h,m}"
  # spec.exclude_files = "Nautilus-ios-sdk/Core/Sources/Exclude"
  # spec.resources = "Nautilus-ios-sdk/Core/Resources/Assets.xcassets", "Nautilus-ios-sdk/Core/Resources/Nautilus.plist", "Nautilus-ios-sdk/Core/Resources/Nautilus_*.plist"

  spec.frameworks = 'Foundation', 'CoreTelephony'
  spec.dependency "NautilusContainerSDK", "1.3.15"
  spec.dependency "NautilusLoggingSDK", "1.3.15"

  spec.swift_version = '5.0'

  # Setting for development
  # spec.xcconfig = {
  #   'OTHER_SWIFT_FLAGS' => '$(inherited) -D DISABLE_DEEPLINK'
  # }
end
