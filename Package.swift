// swift-tools-version: 5.8

///
import PackageDescription

///
let package = Package(
    name: "StandardHexadecimalColorCode-module",
    products: [
        .library(
            name: "StandardHexadecimalColorCode-module",
            targets: ["StandardHexadecimalColorCode-module"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/ColorCode-RGBA-256-module",
            "0.1.3" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/RandomlyGeneratable-module",
            "0.1.0" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/Testable-module",
            "0.1.0" ..< "0.2.0"
        ),
    ],
    targets: [
        .target(
            name: "StandardHexadecimalColorCode-module",
            dependencies: [
                "ColorCode-RGBA-256-module",
            ]
        ),
        .testTarget(
            name: "StandardHexadecimalColorCode-module-tests",
            dependencies: [
                "StandardHexadecimalColorCode-module",
                "RandomlyGeneratable-module",
                "Testable-module",
            ]
        ),
    ]
)
