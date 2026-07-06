// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.4.0.21067
// Summary: TXLiteAVSDK_Player_Premium
// Description: TXLiteAVSDK Player Premium is a playback component that enables you to integrate powerful video playback capabilities—comparable to
// those of Tencent Video—using just a few lines of code.

import PackageDescription

let package = Package(
    name: "Player_Premium_SwiftPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Player_Premium_SwiftPM",
            targets: ["Player_Premium_SwiftPM"]
        )
    ],
    targets: [
        // ==================== Binary Targets ====================

        .binaryTarget(
            name: "TXLiteAVSDK_Player_Premium",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/player_premium/13.4.0.21067/TXLiteAVSDK_Player_Premium.xcframework.zip",
            checksum: "56185fb1f4713dc9a02496314b757057fc0263ce9fac9d0499ce69b9c23bfe80"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/player_premium/13.4.0.21067/TXFFmpeg.xcframework.zip",
            checksum: "d8f5967d5773bf85cef3baed271f69e04497810c80bd66bb942d55d9a8812af0"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/player_premium/13.4.0.21067/TXSoundTouch.xcframework.zip",
            checksum: "f88c38e275141dd1274f64923c052fddd18983896b6da879b9bf53bd8de94eda"
        ),
        // ==================== Wrapper Target ====================

        .target(
            name: "Player_Premium_SwiftPM",
            dependencies: [
                "TXLiteAVSDK_Player_Premium",
                "TXFFmpeg",
                "TXSoundTouch"
            ],
            path: "Sources/PlayerWrapper",
            publicHeadersPath: "",
            linkerSettings: [
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MetalKit"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("VideoToolbox"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("Accelerate"),
                .linkedFramework("CoreServices"),
                .linkedFramework("ReplayKit"),
                .linkedLibrary("z"),
                .linkedLibrary("resolv"),
                .linkedLibrary("iconv"),
                .linkedLibrary("stdc++"),
                .linkedLibrary("c++"),
                .linkedLibrary("sqlite3"),
            ]
        ),
    ]
)
