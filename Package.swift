// swift-tools-version: 6.2.0
import PackageDescription

let package = Package(
    name: "wendy-agent",
    platforms: [
        .macOS(.v26)
    ],
    products: [
        .executable(name: "wendy", targets: ["wendy"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.33.3"),
    ],
    targets: [
        /// The main executable provided by wendy-cli.
        .executableTarget(
            name: "wendy",
            dependencies: [.product(name: "SwiftProtobuf", package: "swift-protobuf")],
            linkerSettings: [
                .linkedLibrary("zlib", .when(platforms: [.windows])),
                .linkedLibrary("z", .when(platforms: [.windows])),
                .unsafeFlags(
                    ["-LC:/vcpkg/installed/x64-windows/lib"],
                    .when(platforms: [.windows])
                ),
            ]
        )
    ]
)
