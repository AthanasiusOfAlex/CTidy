// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CTidy",
    products: [
        .library(name: "CTidy", targets: ["CTidy"]),
    ],
    targets: [
        .systemLibrary(
            name: "CTidy",
            pkgConfig: "tidy",
            providers: [
                .brew(["tidy-html5"]),
            ]
        )
    ]
)
