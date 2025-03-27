// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BamwareUI",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "BamwareUI", targets: ["BamwareUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mrbam88/BamwareCore.git", branch: "main"),
        .package(url: "https://github.com/mrbam88/BamwareSettings.git", branch: "main")
    ],
    targets: [
        .target(
            name: "BamwareUI",
            dependencies: [
                "BamwareCore",
                "BamwareSettings"
            ]
        ),
        .testTarget(
            name: "BamwareUITests",
            dependencies: ["BamwareUI"]
        )
    ]
)
