// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.4.0.21062
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/player_premium/13.4.0.21062/TXLiteAVSDK_Player_Premium.xcframework.zip",
            checksum: "1429f043ffcf9f6ff280d0b9564759c81dc0ced19312c08a05ae48f0dd25db25"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/player_premium/13.4.0.21062/TXFFmpeg.xcframework.zip",
            checksum: "260dc4acd078f68a13afb70f8943aa73ada1305aab5e3f3a1076fb54ebf2c04b"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.4/player_premium/13.4.0.21062/TXSoundTouch.xcframework.zip",
            checksum: "215c356e98a3aa54d804b46dbe51eaa496688d34c07e423c43af99e84e2ca0d6"
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
