// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "material-components-ios",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    // This is what your app imports:
    .library(name: "MaterialComponents", targets: ["MaterialComponents"]),
  ],
  dependencies: [
    // Add deps here later if you decide to pull them in as SwiftPM deps
  ],
  targets: [
    .target(
      name: "MaterialComponents",
      path: ".",
      exclude: [
        "components/private",
        "catalog",
        "components/ActionSheet/src/MaterialActionSheet.bundle",
        "components/ActivityIndicator/src/MaterialActivityIndicator.bundle",
        "components/AppBar/src/MaterialAppBar.bundle",
        "components/CollectionCells/src/MaterialCollectionCells.bundle",
        "components/Collections/src/MaterialCollections.bundle",
        "components/Dialogs/src/MaterialDialogs.bundle",
        "components/PageControl/src/MaterialPageControl.bundle",
        "components/ProgressView/src/MaterialProgressView.bundle",
        "components/Snackbar/src/MaterialSnackbar.bundle",
        "components/TextFields/src/MaterialTextFields.bundle"
      ],
      sources: [
        "components/Buttons/src",
        "components/schemes/shape/src"
        // "components/TextFields/src",
        // "components/Themes/src",
        // "components/Typography/src",
        // "components/TextControls/src"
      ],
      publicHeadersPath: "spm/include",
      cSettings: [
        // So the umbrella header can import "components/..." paths:
        .headerSearchPath("."),
        .headerSearchPath("components"),
        .headerSearchPath("spm/include")
      ],
      linkerSettings: [
        .linkedFramework("UIKit"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("CoreGraphics"),
      ]
    )
  ]
)
