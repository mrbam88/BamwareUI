// ~/c/bamware/BamwareUI/Package.swift
// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "BamwareUI",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "BamwareUI", targets: ["BamwareUI"])
    ],
    dependencies: [
        .package(url: "https://github.com/mrbam88/BamwareCore.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "BamwareUI",
            dependencies: ["BamwareCore"]
        ),
        .testTarget(
            name: "BamwareUITests",
            dependencies: ["BamwareUI"]
        )
    ]
)
