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
            url: "https://github.com/Legitimuz-Tech/legitimuz-sdk-geoloc-ios/releases/download/1.0.3/AntifraudeSDK.xcframework.zip",
            checksum: "ddb82550fc841e233f8f6b96cc74b13e16b31687e0a26c278e7909ae447ee8a8"
           
        ),
        .testTarget(
            name: "AntifraudeSDKTests",
            dependencies: ["AntifraudeSDK"]
        )
    ]
)

