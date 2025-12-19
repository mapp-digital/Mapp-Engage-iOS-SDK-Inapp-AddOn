Pod::Spec.new do |s|

  s.name         = "MappSDKInapp"
  s.version      = "6.0.8"
  s.cocoapods_version = '>= 1.10'
  s.summary      = "Mapp SDK Inapp enables developers to harnest the full power of Appoxee Inapp messaging on their iOS applications."
  s.description  = 	<<-DESC
  					Mapp SDK Inapp enables Inapp messaging in your iOS application, for engaging your application users and increasing retention.
                   	DESC
  s.homepage     = "https://mapp.com"
  s.license      = { :type => "Custom", :file => "MappLicence.txt" }
  s.author       = { "Mapp Digital" => "https://mapp.com/contact-us/" }
  s.source       = { :git => "https://github.com/MappCloud/MappSDKInapp.git", :tag => "#{s.version}" }
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 i386', 'VALID_ARCHS[sdk=iphoneos*]' => 'arm64' }
  s.ios.framework = 'WebKit'
  s.platform     = :ios, "10.0"
  s.ios.vendored_frameworks = "SDK/AppoxeeInapp.xcframework"
  s.preserve_paths = 'SDK/AppoxeeInapp.xcframework'
  s.resource = 'SDK/AppoxeeInappResources.bundle'
  s.requires_arc = true

end
