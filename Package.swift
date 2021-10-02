// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "SwiftOracle",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(name: "SwiftOracle", targets: ["SwiftOracle"])
    ],
    dependencies: [],
    targets: [
        .systemLibrary(name: "cocilib", pkgConfig: "ocilib"),
        .target(name: "SwiftOracle", dependencies: ["cocilib"]),
    ]
)
