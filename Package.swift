// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Version: 13.3.20845
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
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/player_premium/13.3.0.20845/TXLiteAVSDK_Player_Premium.xcframework.zip",
            checksum: "8eb6e44a3d0090f6a6121973faa9598e6ecc2488234466adbfe17a48aa680585"
        ),
        .binaryTarget(
            name: "TXFFmpeg",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/player_premium/13.3.0.20845/TXFFmpeg.xcframework.zip",
            checksum: "ae7cb0280431e80f25f5783b5e506db08f1daba2b39b909022ea98d6f4c41aff"
        ),
        .binaryTarget(
            name: "TXSoundTouch",
            url: "https://liteav.sdk.qcloud.com/download/spm/13.3/player_premium/13.3.0.20845/TXSoundTouch.xcframework.zip",
            checksum: "85b1fcef86ea54d87a5f435deb9a89d4afaa55adc4ec40bee251897d27594a93"
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
