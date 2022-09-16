Pod::Spec.new do |spec|
  spec.name         = "NautilusNotificationServiceSDK"
  spec.version      = "1.3.13"
  spec.summary      = "ModuleApps 2.0 Notification Service SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Notification Service SDK
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
  spec.vendored_frameworks = 'NautilusNotificationServiceSDK.xcframework'

  # Setting for development
  # spec.source_files  = "Nautilus-ios-sdk/Notification/Sources/Base/NautilusNotificationHandler.swift"

  spec.frameworks = 'UIKit', 'UserNotifications'

  spec.swift_version = '5.0'

  # Setting for development
  # spec.xcconfig = {
  #   'OTHER_SWIFT_FLAGS' => '$(inherited) -D PUSH_SERVICE_EXTENSION'
  # }
end
