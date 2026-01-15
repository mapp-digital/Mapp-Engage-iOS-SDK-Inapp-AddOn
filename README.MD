Mapp SDK
===========
This repository contains the Mapp iOS SDK for in app messages. It is agreggation for Mapp SDK for push notifications.

Integration
-----------

**Cocoa pods**

```ruby
target 'project_name' do
    pod 'MappSDK'
    pod 'MappSDKInapp'
end
```

**OR**


```ruby
target 'project_name' do
    pod 'MappSDK', :git => 'https://github.com/MappCloud/MappSDK.git', :tag => '6.1.2'
    pod 'MappSDKInapp', :git => 'https://github.com/MappCloud/MappSDKInapp.git', :tag => '6.0.9'
end
```

**Manual**

* Drag and drop the ```AppoxeeSDK.xcframework``` to your project.
* Drag and drop the ```AppoxeeSDKResources.bundle``` to your project.
* Drag and drop the ```AppoxeeInapp.xcframework``` to your project.
* Drag and drop the ```AppoxeeInappResources.bundle``` to your project.
* Link ```UserNotifications.framework``` to your project.
* Link ```WebKit.framework``` to your project.

Implementation
--------------

**Objective-C**
```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[Appoxee shared] engageAndAutoIntegrateWithLaunchOptions:launchOptions andDelegate:nil with:EMC_US];
    [[AppoxeeInapp shared] engageWithDelegate:self with:eMC_US];
    return YES;
}
```

**Swift**
```swift
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

            Appoxee.shared()?.engageAndAutoIntegrate(launchOptions: launchOptions, andDelegate: nil, with: .EMC_US)
            AppoxeeInapp.shared()?.engage(with: self, with: .eMC_US)

    return true
}
```

License
-------
https://mapp.com/contracts/
