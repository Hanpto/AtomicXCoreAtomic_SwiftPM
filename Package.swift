// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "AtomicXCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AtomicXCore",
                 targets: ["AtomicXCoreBinary", "AtomicXCoreDeps"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-RTC/Chat_SDK_SwiftPM.git", from: "9.0.7652"),
        .package(url: "https://github.com/Tencent-RTC/Professional_SwiftPM.git", from: "13.3.20845")
    ],
    targets: [
        .binaryTarget(
            name: "AtomicXCoreBinary",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/app/tuikit/download/release/5.2/AtomicXCore_5.2.1.zip",
            checksum: "def42d0b450dbb9cdf3a05c18b5685d152d095a4aac18b5b9221c347df345280"
        ),
        .target(
            name: "AtomicXCoreDeps",
            dependencies: [
                .product(name: "Chat_SDK_SwiftPM", package: "Chat_SDK_SwiftPM"),
                .product(name: "Professional_SwiftPM", package: "Professional_SwiftPM")
            ],
            path: "Sources/Deps"
        )
    ]
)
