Pod::Spec.new do |spec|
    spec.name         = "NautilusCampaignSDK"
    spec.version      = "1.19.2"
    spec.summary      = "ModuleApps 2.0 Campaign SDK for iOS"
    spec.description  = <<-DESC
                        ModuleApps 2.0 Campaign SDK
                        DESC
    spec.homepage     = "https://moduleapps.com"
    spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
    spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
    spec.platform     = :ios
    spec.ios.deployment_target = "15.0"
  
    if ENV.has_key?('NAUTILUS_DEVELOP') then
      # Setting for development
      spec.source         = { :git => '' }
      spec.source_files  = "Nautilus-ios-sdk/Campaign/Sources/*.{h,m}", "Nautilus-ios-sdk/Campaign/Sources/**/*.swift", "Nautilus-ios-sdk/Campaign/Sources/**/*.{h,m}"
      spec.exclude_files = "Nautilus-ios-sdk/Campaign/Sources/Exclude"
      spec.resources = "Nautilus-ios-sdk/Campaign/Resources/moduleapps-campaign.json"
    else
      # Setting for release
      spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
      spec.vendored_frameworks = 'NautilusCampaignSDK.xcframework'
    end
  
    spec.frameworks = 'Foundation'
    spec.dependency "NautilusCoreSDK", "#{spec.version}"
    spec.dependency "NautilusContainerSDK", "#{spec.version}"
    spec.dependency "NautilusLoggingSDK", "#{spec.version}"
    spec.dependency "NautilusConfigSDK", "#{spec.version}"
    spec.dependency "NautilusIdentifySDK", "#{spec.version}"
  
    spec.swift_version = '5.0'
  end