Pod::Spec.new do |s|

  s.name         = "MappSDKInapp"
  s.version      = "6.0.13"
  s.cocoapods_version = ">= 1.10"
  s.summary      = "Mapp SDK Inapp enables developers to harness the full power of Appoxee Inapp messaging in their iOS applications."
  s.description  = <<-DESC
                   Mapp SDK Inapp enables in-app messaging in your iOS application, helping engage application users and increase retention.
                   DESC
  s.homepage     = "https://mapp.com"
  s.license      = { :type => "Custom", :file => "MappLicence.txt" }
  s.author       = { "Mapp Digital" => "https://mapp.com/contact-us/" }
  s.source       = { :git => "https://github.com/MappCloud/MappSDKInapp.git", :tag => "#{s.version}" }

  s.platform     = :ios, "10.0"
  s.requires_arc = true
  s.pod_target_xcconfig = { "DEFINES_MODULE" => "YES" }

  s.ios.vendored_frameworks = "SDK/AppoxeeInapp.xcframework"
  s.preserve_paths = "SDK/AppoxeeInapp.xcframework"
  s.resources = "SDK/AppoxeeInappResources.bundle"
  s.ios.frameworks = "Security", "UIKit", "UserNotifications", "WebKit"
  s.libraries = "sqlite3"

end
