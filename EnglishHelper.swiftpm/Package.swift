// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "EnglishHelper",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "EnglishHelper",
            targets: ["AppModule"],
            bundleIdentifier: "one.hdcola.EnglishHelper",
            teamIdentifier: "T4W3MN6QHA",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/HDCodePractice/TranslateController", .branch("main")),
        .package(url: "https://github.com/rushairer/ZoomableImageView", "1.0.0"..<"2.0.0"),
        .package(url: "https://github.com/marmelroy/Zip", "2.0.0"..<"3.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "TranslateController", package: "translatecontroller"),
                .product(name: "ZoomableImageView", package: "zoomableimageview"),
                .product(name: "Zip", package: "zip")
            ],
            path: ".",
            resources: [
                .process("Resources")
            ]
        )
    ]
)