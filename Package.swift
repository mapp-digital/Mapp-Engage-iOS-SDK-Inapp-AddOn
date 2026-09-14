// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Mapp-Engage-iOS-SDK-Inapp-AddOn",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .library(
            name: "Mapp-Engage-iOS-SDK-Inapp-AddOn",
            targets: ["Mapp-Engage-iOS-SDK-Inapp-AddOn"]
        )
    ],
    targets: [
        .target(
            name: "Mapp-Engage-iOS-SDK-Inapp-AddOn",
            dependencies: ["AppoxeeInappWrapper"],
            path: ".",
            exclude: [
                "AppoxeeInappWrapper",
                "MappLicence.txt",
                "MappSDKInapp.podspec",
                "README.MD",
                "SDK/AppoxeeInapp.xcframework"
            ],
            sources: [
                "Sources/Mapp-Engage-iOS-SDK-Inapp-AddOn/Mapp_Engage_iOS_SDK_Inapp_AddOn.swift"
            ],
            resources: [
                .copy("SDK/AppoxeeInappResources.bundle")
            ]
        ),
        .target(
            name: "AppoxeeInappWrapper",
            dependencies: ["AppoxeeInapp"],
            path: "AppoxeeInappWrapper/AppoxeeInappWrapper",
            linkerSettings: [
                .linkedFramework("Security"),
                .linkedFramework("UIKit"),
                .linkedFramework("UserNotifications"),
                .linkedFramework("WebKit"),
                .linkedLibrary("sqlite3")
            ]
        ),
        .binaryTarget(
            name: "AppoxeeInapp",
            path: "./SDK/AppoxeeInapp.xcframework"
        )
    ]
)
