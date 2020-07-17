// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "aws-spm",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "aws-spm-core",
            targets: ["aws-spm-core"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "aws-spm-core",
            dependencies: [],
            path: "./aws-sdk-ios",
            exclude: [],
            sources: [
                "AWSCore/"
            ],
            publicHeadersPath: "AWSCore",
            cSettings: [
                .headerSearchPath("AWSCore"),
                .headerSearchPath("AWSCore/Authentication"),
                .headerSearchPath("AWSCore/Bolts"),
                .headerSearchPath("AWSCore/CognitoIdentity"),
                .headerSearchPath("AWSCore/Fabric"),
                .headerSearchPath("AWSCore/FMDB"),
                .headerSearchPath("AWSCore/GZIP"),
                .headerSearchPath("AWSCore/KSReachability"),
                .headerSearchPath("AWSCore/Logging"),
                .headerSearchPath("AWSCore/Logging/Extensions"),
                .headerSearchPath("AWSCore/Mantle"),
                .headerSearchPath("AWSCore/Mantle/extobjc"),
                .headerSearchPath("AWSCore/Networking"),
                .headerSearchPath("AWSCore/Reachability"),
                .headerSearchPath("AWSCore/Serialization"),
                .headerSearchPath("AWSCore/Service"),
                .headerSearchPath("AWSCore/STS"),
                .headerSearchPath("AWSCore/TMCache"),
                .headerSearchPath("AWSCore/UICKeyChainStore"),
                .headerSearchPath("AWSCore/Utility"),
                .headerSearchPath("AWSCore/XMLDictionary"),
                .headerSearchPath("AWSCore/XMLWriter")
            ]
        )
        
    ]
)
