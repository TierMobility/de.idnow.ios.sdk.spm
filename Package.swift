// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IDNowSDKCore",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "IDNowSDKCore-with-NFC",
            targets: ["IDNowSDKCore-with-NFC", "FaceTecSDK", "XS2AiOS_UI", "XS2AiOSNetService"]),
        .library(
            name: "IDNowSDKCore-without-NFC",
            targets: ["IDNowSDKCore-without-NFC", "FaceTecSDK", "XS2AiOS_UI", "XS2AiOSNetService"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "IDNowSDKCore-with-NFC",
            path: "IDNow-platform-iOS_4.16.3/IDNowSDKCore-with-NFC.xcframework"
        ),
        .binaryTarget(
            name: "IDNowSDKCore-without-NFC",
            path: "IDNow-platform-iOS_4.16.3/IDNowSDKCore-without-NFC.xcframework"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            path: "IDNow-platform-iOS_4.16.3/FaceTecSDK.xcframework"
        ),
        .binaryTarget(
            name: "XS2AiOS_UI",
            path: "IDNow-platform-iOS_4.16.3/XS2AiOS_UI.xcframework"
        ),
        .binaryTarget(
            name: "XS2AiOSNetService",
            path: "IDNow-platform-iOS_4.16.3/XS2AiOSNetService.xcframework"
        )
    ]
)
