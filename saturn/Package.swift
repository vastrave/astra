import PackageDescription

let package = Package(
    name: "saturn",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0"),
        .package(url: "https://github.com/dominicegginton/Spinner", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "saturn",
            dependencies: [
               .product(name: "ArgumentParser", package: "swift-argument-parser"),
               .product(name: "Spinner", package: "Spinner"),
            ]
        ),
    ]
)
