import PackageDescription

let package = Package(
    name: "ETCore",
    products: [
        .library(
            name: "ETCore",
            targets: ["ETCore"]),
    ],
    targets: [
        .target(
            name: "ETCore"),
        .testTarget(
            name: "ETCoreTests",
            dependencies: ["ETCore"]),
    ]
)
