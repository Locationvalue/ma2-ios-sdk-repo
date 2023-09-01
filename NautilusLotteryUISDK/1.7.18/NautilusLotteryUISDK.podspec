Pod::Spec.new do |spec|
  spec.name         = "NautilusLotteryUISDK"
  spec.version      = "1.7.18"
  spec.summary      = "ModuleApps 2.0 Lottery UI Component SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 Lottery UI Component SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"

  if ENV.has_key?('NAUTILUS_DEVELOP') then
    # Setting for development
    spec.source         = { :git => '' }
    spec.source_files  = "Nautilus-ios-sdk/LotteryUI/Sources/*.{h,m}", "Nautilus-ios-sdk/LotteryUI/Sources/**/*.swift", "Nautilus-ios-sdk/LotteryUI/Sources/**/*.{h,m}", "Nautilus-ios-sdk/LotteryUI/Sources/**/*.storyboard"
    spec.exclude_files = "Nautilus-ios-sdk/LotteryUI/Sources/Exclude"
    spec.resources = "Nautilus-ios-sdk/LotteryUI/Resources/moduleapps-lottery-ui.json", "Nautilus-ios-sdk/LotteryUI/Resources/ma_lottery_lottery_winning_animation.json", "Nautilus-ios-sdk/LotteryUI/Sources/**/*.xib", "Nautilus-ios-sdk/LotteryUI/Sources/**/*.xcdatamodeld", "Nautilus-ios-sdk/LotteryUI/Resources/Assets.xcassets"
  else
    # Setting for release
    spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
    spec.vendored_frameworks = 'NautilusLotteryUISDK.xcframework'
  end

  spec.frameworks = 'Foundation'
  spec.dependency "lottie-ios", "3.4.3"
  spec.dependency "NautilusCoreSDK", "1.7.18"
  spec.dependency "NautilusContainerSDK", "1.7.18"
  spec.dependency "NautilusConfigSDK", "1.7.18"
  spec.dependency "NautilusIdentifySDK", "1.7.18"
  spec.dependency "NautilusLoggingSDK", "1.7.18"
  spec.dependency "NautilusImagingSDK", "1.7.18"
  spec.dependency "NautilusAnalyticsSDK", "1.7.18"
  spec.dependency "NautilusUISDK", "1.7.18"
  spec.dependency "NautilusLotterySDK", "1.7.18"
  spec.dependency "NautilusServerTimeSDK", "1.7.18"

  spec.swift_version = '5.0'
end
