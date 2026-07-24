Pod::Spec.new do |spec|
  spec.name         = "NautilusHierarchicalMenuSDK"
  spec.version      = "1.25.10"
  spec.summary      = "ModuleApps 2.0 HierarchicalMenu SDK for iOS"
  spec.description  = <<-DESC
                      ModuleApps 2.0 HierarchicalMenu SDK
                      DESC
  spec.homepage     = "https://moduleapps.com"
  spec.license      = { :type => "Commercial", :text => "Copyright © DearOne, Inc. All Rights Reserved." }
  spec.author       = { "DearOne, Inc." => "sysadm@dearone.io" }
  spec.platform     = :ios
  spec.ios.deployment_target = "16.0"

  if ENV.has_key?('NAUTILUS_DEVELOP') then
    # Setting for development
    spec.source        = { :git => '' }
    spec.source_files  = "Nautilus-ios-sdk/HierarchicalMenu/Sources/*.{h,m}", "Nautilus-ios-sdk/HierarchicalMenu/Sources/**/*.swift", "Nautilus-ios-sdk/HierarchicalMenu/Sources/**/*.{h,m}"
    spec.exclude_files = "Nautilus-ios-sdk/HierarchicalMenu/Sources/Exclude"
    spec.resources = "Nautilus-ios-sdk/HierarchicalMenu/Resources/moduleapps-hierarchical-menu.json", "Nautilus-ios-sdk/HierarchicalMenu/Resources/Assets.xcassets", "Nautilus-ios-sdk/HierarchicalMenu/Sources/**/*.xib"
  else
    # Setting for release
    spec.source       = { :git => "https://github.com/Locationvalue/ma2-ios-sdk.git", :tag => "#{spec.version}" }
    spec.vendored_frameworks = 'NautilusHierarchicalMenuSDK.xcframework'
  end

  spec.frameworks = 'Foundation'
  spec.dependency "NautilusConfigSDK", "#{spec.version}"
  spec.dependency "NautilusContainerSDK", "#{spec.version}"
  spec.dependency "NautilusCoreSDK", "#{spec.version}"
  spec.dependency "NautilusIdentifySDK", "#{spec.version}"
  spec.dependency "NautilusLoggingSDK", "#{spec.version}"

  spec.swift_version = '5.0'
end
