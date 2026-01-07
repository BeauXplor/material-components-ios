// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "material-components-ios",
  defaultLocalization: "en",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "MaterialComponents", targets: ["MaterialComponents"]),
  ],
  targets: [
    .target(
      name: "MaterialComponents",
      path: "spm",
      sources: ["components"],
      publicHeadersPath: "spm/flat_headers",
      cSettings: [
        .headerSearchPath("."),
        .headerSearchPath("components"),
        .headerSearchPath("flat_headers"),
      ],
      linkerSettings: [
        .linkedFramework("UIKit"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("CoreGraphics"),
      ]
    )
  ]
)
