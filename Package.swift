// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Hook",
    products: [
        .library(
            name: "Hook",
            targets: ["Hook"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Hook",
            dependencies: []
        )
    ]
)
