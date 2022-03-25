Pod::Spec.new do |spec|
  spec.name         = "NautilusNotificationSDK"
  spec.version      = "1.2.2"
  spec.summary      = "ModuleApps 2.0 Notification Component SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Notification Component SDK
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
  spec.vendored_frameworks = 'NautilusNotificationSDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/Notification/Sources/*.{h,m}", "Nautilus-ios-sdk/Notification/Sources/**/*.swift", "Nautilus-ios-sdk/Notification/Sources/**/*.{h,m}"
  # spec.exclude_files = "Nautilus-ios-sdk/Notification/Sources/Exclude"
  # spec.resources = "Nautilus-ios-sdk/Notification/Resources/moduleapps-notification.json"

  spec.frameworks = 'Foundation', 'UserNotifications'
  spec.dependency "NautilusCoreSDK", "1.2.2"
  spec.dependency "NautilusContainerSDK", "1.2.2"
  spec.dependency "NautilusConfigSDK", "1.2.2"
  spec.dependency "NautilusIdentifySDK", "1.2.2"
  spec.dependency "NautilusLoggingSDK", "1.2.2"

  spec.swift_version = '5.0'
end
