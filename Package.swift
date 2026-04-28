// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.2.20652
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.2/player_premium/13.2.0.20652/TXLiteAVSDK_Player_Premium.xcframework.zip",
            checksum: "b9912e425f9d6cdbc348660158afd87247569ef5b3da99ef460afcc08f827115"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.2/player_premium/13.2.0.20652/TXFFmpeg.xcframework.zip",
            checksum: "259751f755bf6870b02052e25574e98981bdfc068cf443bff49f4bda0a00ebf5"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.2/player_premium/13.2.0.20652/TXSoundTouch.xcframework.zip",
            checksum: "93c45ff798746c311987ec24616e733066e812d701ff4579d4f40b90e4ec1b0a"
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
