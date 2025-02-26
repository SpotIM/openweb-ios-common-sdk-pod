// swift-tools-version:5.5
import PackageDescription

let owCommonSDK = "OpenWebCommon"
let owCommonWrapperTarget = "OpenWebCommonWrapperTarget"

func createProducts() -> [Product] {
    let products: [Product] = [.library(name: owCommonSDK, targets: [owCommonWrapperTarget])]

    return products
}

func createTargets() -> [Target] {
    var targets = [Target]()

    // Adding OpenWebCommonSDK xcframework
    let OpenWebCommonSDK: Target = .binaryTarget(
        name: owCommonSDK,
        path: "\(owCommonSDK).xcframework"
    )
    targets.append(OpenWebCommonSDK)

    // Adding a "wrapper" target which all xcframeworks are "dependencies" to this one
    let wrapperTarget: Target = .target(
        name: owCommonWrapperTarget,
        dependencies: [
            .target(name: "OpenWebCommon", condition: .when(platforms: .some([.iOS])))
        ],
        path: owCommonWrapperTarget
    )
    targets.append(wrapperTarget)

    return targets
}

let products = createProducts()
let targets = createTargets()

let package = Package(
    name: owCommonSDK,
    platforms: [
        .iOS(.v13)
    ],
    products: products,
    targets: targets
)
