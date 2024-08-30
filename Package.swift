// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Static",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Static",
            targets: ["Static"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ra1028/DifferenceKit", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "Static",
            dependencies: [
                .product(name: "DifferenceKit", package: "DifferenceKit")
            ]
        ),
        .testTarget(
            name: "StaticTests",
            dependencies: ["Static"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
