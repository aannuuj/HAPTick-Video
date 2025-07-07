// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "HAPtick",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "HAPtick",
            targets: ["HAPtick"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "HAPtick",
            path: "Haptick.xcframework"
        )
    ]
) 
