// swift-tools-version: 6.1
// Binary distribution Package.swift for AntifraudeSDK

import PackageDescription

let package = Package(
    name: "AntifraudeSDK",
    platforms: [
        .iOS(.v14)  // iOS 14+ for modern APIs including authorizationStatus
    ],
    products: [
        .library(
            name: "AntifraudeSDK",
            targets: ["AntifraudeSDK"]),
    ],
    dependencies: [
        // No external dependencies
    ],
    targets: [
        // Binary target -  will download the pre-compiled library
        .binaryTarget(
            name: "AntifraudeSDK",
            url: "https://github.com/Legitimuz-Tech/legitimuz-sdk-geoloc-ios/releases/download/1.0.4/AntifraudeSDK.xcframework.zip",
            checksum: "c2ca18744b4e9b3458b150fe0fb72ad3a0467f4a16ec787efe8b898f63eb33c9"
        ),
        .testTarget(
            name: "AntifraudeSDKTests",
            dependencies: ["AntifraudeSDK"]
        )
    ]
)

