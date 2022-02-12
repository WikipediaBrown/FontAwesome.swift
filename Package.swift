// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "FontAwesome",
    platforms: [
        .iOS(.v9),         //.v8 - .v13
        .macOS(.v10_10),    //.v10_10 - .v10_15
        .tvOS(.v9),        //.v9 - .v13
    ],
    products: [
        .library(name: "FontAwesome", targets: ["FontAwesome"]),
        .executable(name: "tools", targets: ["tools"])
    ],
    targets: [
        .target(
            name: "FontAwesome",
            exclude: ["Supporting Files/Info.plist"],
            resources: [
                .process("Resources/Fonts"),
            ]
        ),
        .executableTarget(
            name: "tools"
        )
    ]
)
