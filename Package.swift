// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "BudgetFlowTranslations",
    defaultLocalization: "en",
    platforms: [.iOS(.v16), .macOS(.v13), .watchOS(.v9)],
    products: [
        .library(
            name: "BudgetFlowTranslations",
            targets: ["BudgetFlowTranslations"]
        ),
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", exact: "1.6.30"),
        .package(url: "https://source.skip.tools/skip-foundation.git", exact: "1.3.9"),
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
        ),
    ]
)
