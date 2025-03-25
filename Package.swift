// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mapp-Engage-iOS-SDK-Inapp-AddOn",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Mapp-Engage-iOS-SDK-Inapp-AddOn",
            targets: ["Mapp-Engage-iOS-SDK-Inapp-AddOn"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Mapp-Engage-iOS-SDK-Inapp-AddOn",
            dependencies: [
                "AppoxeeInappWrapper"
            ],
            resources: [
                .copy("AppoxeeInappResources.bundle")
            ]
        ),
        .target(
            name: "AppoxeeInappWrapper",
            dependencies: ["AppoxeeInappSDK"],
            path: "AppoxeeInappWrapper/AppoxeeInappWrapper"
        ),
        .binaryTarget(
            name: "AppoxeeInappSDK",
            path: "./SDK/AppoxeeInapp.xcframework"
        )
    ]
)
