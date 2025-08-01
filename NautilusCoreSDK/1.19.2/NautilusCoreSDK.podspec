Pod::Spec.new do |spec|
  spec.name         = "NautilusCoreSDK"
  spec.version      = "1.19.2"
  spec.summary      = "ModuleApps 2.0 Core SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Core SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "15.0"

  if ENV.has_key?('NAUTILUS_DEVELOP') then
    # Setting for development
    spec.source         = { :git => '' }
    spec.source_files  = "Nautilus-ios-sdk/Core/Sources/*.{h,m}", "Nautilus-ios-sdk/Core/Sources/**/*.swift", "Nautilus-ios-sdk/Core/Sources/**/*.{h,m}"
    spec.exclude_files = "Nautilus-ios-sdk/Core/Sources/Exclude"
    spec.resources = "Nautilus-ios-sdk/Core/Resources/Assets.xcassets", "Nautilus-ios-sdk/Core/Resources/Nautilus.plist", "Nautilus-ios-sdk/Core/Resources/Nautilus_*.plist", "Nautilus-ios-sdk/Core/Resources/nautilus.strings"

    spec.xcconfig = {
      'OTHER_SWIFT_FLAGS' => '$(inherited) -D DISABLE_DEEPLINK'
    }
  else
    # Setting for release
    spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
    spec.vendored_frameworks = 'NautilusCoreSDK.xcframework'
  end

  spec.frameworks = 'Foundation', 'CoreTelephony'
  spec.dependency "NautilusContainerSDK", "#{spec.version}"
  spec.dependency "NautilusLoggingSDK", "#{spec.version}"

  spec.swift_version = '5.0'
end
