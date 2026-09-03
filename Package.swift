// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.5.0.21355
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/player_premium/13.5.0.21355/TXLiteAVSDK_Player_Premium.xcframework.zip",
            checksum: "71b0298ef853898becdcbb538a4d1820b7c8ee4607c1085db58e2a2233594086"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/player_premium/13.5.0.21355/TXFFmpeg.xcframework.zip",
            checksum: "a60fd7ab8df2d1c1c593b38e1e4357bb96eb5181ae8a81a6d402c60d626f48fe"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.5/player_premium/13.5.0.21355/TXSoundTouch.xcframework.zip",
            checksum: "7d075c9a5761504a44929c33ac41855b6995fcb464a8276b658c7803021befe5"
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
