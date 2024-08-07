// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ADXRPackagev2",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "ADXRPackage",
            targets: ["adxr_framework_v2"])
    ],
    targets: [
        .binaryTarget(
            name: "adxr_framework_v2",
            path: "Frameworks/adxr_framework_v2.xcframework")
    ]
)
