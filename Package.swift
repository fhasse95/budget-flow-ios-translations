// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "budget-flow-translations",
    defaultLocalization: "en",
    platforms: [.iOS(.v16), .macOS(.v13), .watchOS(.v9)],
    products: [
        .library(name: "BudgetFlowTranslations", targets: ["BudgetFlowTranslations"])
    ],
    dependencies: [
        .package(url: "https://source.skip.tools/skip.git", from: "1.7.5"),
        .package(url: "https://source.skip.tools/skip-foundation.git", from: "1.3.15")
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
