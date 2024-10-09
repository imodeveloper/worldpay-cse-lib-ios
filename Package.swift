// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let package = Package(
    name: "WorldpayCSE",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "WorldpayCSE",
            targets: ["WorldpayCSE"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/OpenSSL.git", from: "3.3.2000")
    ],
    targets: [
        .target(
            name: "WorldpayCSE",
            dependencies: [
                .product(name: "OpenSSL", package: "OpenSSL")
            ],
            path: "Sources/WorldpayCSE",
            publicHeadersPath: "include"
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
