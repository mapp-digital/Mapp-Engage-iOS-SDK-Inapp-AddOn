Mapp SDK In-App Add-On
=======================

This repository contains the Mapp Engage iOS SDK in-app messaging add-on.

Integration
-----------

### Swift Package Manager

Add this repository as a package dependency in Xcode or in `Package.swift`:

```swift
.package(url: "https://github.com/MappCloud/MappSDKInapp.git", from: "6.0.12")
```

Then add the library product to your app target:

```swift
.product(
    name: "Mapp-Engage-iOS-SDK-Inapp-AddOn",
    package: "MappSDKInapp"
)
```

Import the package module where you use the SDK:

```swift
import Mapp_Engage_iOS_SDK_Inapp_AddOn
```

Implementation
--------------

### Objective-C

```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[Appoxee shared] engageAndAutoIntegrateWithLaunchOptions:launchOptions andDelegate:nil with:EMC_US];
    [[AppoxeeInapp shared] engageWithDelegate:self with:eMC_US];
    return YES;
}
```

### Swift

```swift
func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
) -> Bool {
    Appoxee.shared()?.engageAndAutoIntegrate(launchOptions: launchOptions, andDelegate: nil, with: .EMC_US)
    MappInappResources.configure()
    AppoxeeInapp.shared()?.engage(with: self, with: .eMC_US)

    return true
}
```

License
-------

https://mapp.com/contracts/
