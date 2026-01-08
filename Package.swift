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
        // .package(path: "../async-http-client"),
        // .package(path: "../hummingbird"),
        // .package(url: "https://github.com/vapor/jwt-kit.git", from: "5.0.0"),
        // .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.5.0"),
        // .package(url: "https://github.com/apple/swift-log.git", from: "1.6.3"),
        // .package(url: "https://github.com/grpc/grpc-swift-2.git", from: "2.2.1"),
        // .package(url: "https://github.com/grpc/grpc-swift-extras.git", from: "2.1.1"),
        // .package(url: "https://github.com/grpc/grpc-swift-protobuf.git", from: "2.0.0"),
        // .package(path: "../DNSClient"),
        // .package(path: "../grpc-swift-nio-transport"),
        // .package(url: "https://github.com/apple/swift-certificates.git", from: "1.12.0"),
        .package(path: "../swift-nio"),
        // .package(path: "../swift-nio-ssl"),
        // .package(path: "../swift-nio-extras"),
        // .package(path: "../Rainbow"),
        // .package(url: "https://github.com/swift-server/swift-service-lifecycle.git", from: "2.9.1"),
        // .package(url: "https://github.com/apple/swift-crypto.git", from: "3.12.2"),
        // .package(
        //     url: "https://github.com/tuist/Noora.git",
        //     from: "0.52.0"
        // ),
        // .package(
        //     url: "https://github.com/swiftlang/swift-subprocess.git",
        //     exact: "0.2.1",
        //     traits: [.trait(name: "SubprocessSpan")]
        // ),
        // .package(url: "https://github.com/apple/swift-http-types.git", from: "1.4.0"),
        // .package(url: "https://github.com/apple/swift-async-dns-resolver.git", from: "0.4.0"),
        // .package(url: "https://github.com/edgeengineer/dbus.git", from: "0.2.3"),
        // .package(url: "https://github.com/apple/swift-system.git", from: "1.4.2"),
        // .package(url: "https://github.com/jpsim/Yams.git", from: "6.2.0"),
    ],
    targets: [
        /// The main executable provided by wendy-cli.
        .executableTarget(
            name: "wendy",
            dependencies: [
                // .product(name: "ArgumentParser", package: "swift-argument-parser"),
                // .product(name: "Logging", package: "swift-log"),
                // .product(name: "GRPCNIOTransportHTTP2", package: "grpc-swift-nio-transport"),
                // .product(name: "SystemPackage", package: "swift-system"),
                // .product(name: "NIOFoundationCompat", package: "swift-nio"),
                // .product(
                //     name: "Hummingbird",
                //     package: "hummingbird"
                // ),
                // .product(name: "Noora", package: "Noora"),
                // .product(name: "DNSClient", package: "DNSClient"),
                .product(name: "NIO", package: "swift-nio"),
            ],
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
