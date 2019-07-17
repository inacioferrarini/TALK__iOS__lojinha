// swift-tools-version:4.2
//
//  Common.swift
//  Common
//
//  Created by Inacio Ferrarini on 01/04/19.
//  Copyright © 2019 inacioferrarini. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "Common",
    products: [
        .library(
            name: "Common",
            targets: ["Common"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Common",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "CommonTests",
            dependencies: ["Common"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v4, .v4_2]
)
