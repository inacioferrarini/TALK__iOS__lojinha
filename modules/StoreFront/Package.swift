// swift-tools-version:5.0
//
//  StoreFront.swift
//  StoreFront
//
//  Created by Inacio Ferrarini on 01/04/19.
//  Copyright © 2019 inacioferrarini. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "StoreFront",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v2),
    ],
    products: [
        .library(
            name: "StoreFront",
            targets: ["StoreFront"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "StoreFront",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "StoreFrontTests",
            dependencies: ["StoreFront"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
