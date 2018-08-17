// swift-tools-version:4.1
import PackageDescription

let package = Package(
    name: "CLibreSSL",
    products: [
    	.library(name: "CLibreSSL", targets: ["CLibreSSL"]),
    ],
    targets: [
    	.target(name: "CLibreSSL", dependencies: [])
    ]
)
