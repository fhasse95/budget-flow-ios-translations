// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "BudgetFlowTranslations",
    defaultLocalization: "en",
    platforms: [.iOS(.v16), .macCatalyst(.v16), .macOS(.v13), .watchOS(.v9)],
    products: [
        .library(name: "BudgetFlowTranslations", targets: ["BudgetFlowTranslations"])
    ],
    dependencies: [
        .package(url: "https://github.com/skiptools/skip.git", from: "1.9.10"),
        .package(url: "https://github.com/skiptools/skip-foundation.git", from: "1.4.5")
    ],
    targets: [
        .target(
            name: "BudgetFlowTranslations",
            dependencies: [
                .product(name: "SkipFoundation", package: "skip-foundation"),
            ],
            resources: [
                .process("Resources")
            ],
            plugins: [
                .plugin(name: "skipstone", package: "skip")
            ]
        )
    ]
)

if Context.environment["SKIP_BRIDGE"] ?? "0" != "0" {
    // Add Skip Bridge and Skip Android Bridge support.
    package.dependencies += [
        .package(url: "https://github.com/skiptools/skip-bridge.git", from: "0.18.0"),
        .package(url: "https://github.com/skiptools/skip-android-bridge.git", from: "0.6.6")
    ]

    package.targets.forEach { target in
        target.dependencies += [
            .product(name: "SkipBridge", package: "skip-bridge"),
            .product(name: "SkipAndroidBridge", package: "skip-android-bridge")
        ]
    }

    // All library types must be dynamic to support bridging.
    package.products = package.products.map { product in
        guard let libraryProduct = product as? Product.Library else { return product }
        return .library(name: libraryProduct.name, type: .dynamic, targets: libraryProduct.targets)
    }
}
