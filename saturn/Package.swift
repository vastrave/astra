// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// :snippet package-dependencies
let package = Package(
    name: "saturn",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.4.0"),
    ],
    targets: [
        .target(
            name: "saturn",
            dependencies: [
               .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
        .testTarget(
            name: "saturnDbg",
            dependencies: ["saturn"]),
    ]
)
// :endsnippet
