// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AdXR",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "AdXR",
            targets: ["adxr"])
    ],
    targets: [
        .binaryTarget(
            name: "adxr",
            path: "Frameworks/adxr.xcframework")
    ]
)
