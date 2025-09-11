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
            url: "https://github.com/Legitimuz-Tech/legitimuz-sdk-geoloc-ios/releases/download/1.0.0/AntifraudeSDK.xcframework.zip",
            checksum: "f55ec27f5057ea8b9687203c22216fb96d4460223da632472dac1b0b898b40b0"
           
        ),
        .testTarget(
            name: "AntifraudeSDKTests",
            dependencies: ["AntifraudeSDK"]
        )
    ]
)

