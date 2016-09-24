import PackageDescription

let package = Package(name: "CLibreSSL", targets: [
	Target(name: "CLibreSSL"),
	Target(name: "Example", dependencies: ["CLibreSSL"])
], dependencies: [
	.Package(url: "https://github.com/tannernelson/Clibcrypto", majorVersion: 0),
	.Package(url: "https://github.com/tannernelson/Clibtls", majorVersion: 0),
])
