// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
