// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum myAssets {
  internal enum Assets {
    internal static let accentColor = ColorAsset(name: "AccentColor")
    internal static let add = ImageAsset(name: "Add")
    internal static let divider = ImageAsset(name: "Divider")
    internal static let flag = ImageAsset(name: "Flag")
    internal static let group11 = ImageAsset(name: "Group 11")
    internal static let icon2 = ImageAsset(name: "Icon-2")
    internal static let icon3 = ImageAsset(name: "Icon-3")
    internal static let icon4 = ImageAsset(name: "Icon-4")
    internal static let icon = ImageAsset(name: "Icon")
    internal static let profilePhoto2 = ImageAsset(name: "Profile photo-2")
    internal static let profilePhoto3 = ImageAsset(name: "Profile photo-3")
    internal static let profilePhoto4 = ImageAsset(name: "Profile photo-4")
    internal static let profilePhoto = ImageAsset(name: "Profile photo")
    internal static let topup1 = ImageAsset(name: "Topup 1")
    internal static let arrowRightSLine = ImageAsset(name: "arrow-right-s-line")
    internal static let billSuccess = ImageAsset(name: "billSuccess")
    internal static let contactUs = ImageAsset(name: "contactUs")
    internal static let electricty = ImageAsset(name: "electricty")
    internal static let equalizerLine = ImageAsset(name: "equalizer-line")
    internal static let fileCopyLine = ImageAsset(name: "file-copy-line")
    internal static let help = ImageAsset(name: "help")
    internal static let info = ImageAsset(name: "info")
    internal static let payBill = ImageAsset(name: "payBill")
    internal static let phone = ImageAsset(name: "phone")
    internal static let rssLineBlack = ImageAsset(name: "rss-line Black")
    internal static let rssLine = ImageAsset(name: "rss-line")
    internal static let search = ImageAsset(name: "search")
    internal static let securePaymentLine = ImageAsset(name: "secure-payment-line")
    internal static let vector2 = ImageAsset(name: "Vector-2")
    internal static let bankCard2Fill = ImageAsset(name: "bank-card-2-fill")
    internal static let bankCard2Line = ImageAsset(name: "bank-card-2-line")
    internal static let fileList3Fill = ImageAsset(name: "file-list-3-fill")
    internal static let fileList3Line = ImageAsset(name: "file-list-3-line")
    internal static let home3Fill = ImageAsset(name: "home-3-fill")
    internal static let walletFill = ImageAsset(name: "wallet-fill")
    internal static let walletLine = ImageAsset(name: "wallet-line")
    internal static let topUp = ImageAsset(name: "topUp")
    internal static let transfare = ImageAsset(name: "transfare")
    internal static let water = ImageAsset(name: "water")
    internal static let withDraw = ImageAsset(name: "withDraw")
  }
  internal enum Color {
    internal static let aliceBlue = ColorAsset(name: "Alice Blue")
    internal static let azureishWhite = ColorAsset(name: "Azureish White")
    internal static let blackCoral = ColorAsset(name: "Black Coral")
    internal static let buttonColor = ColorAsset(name: "ButtonColor")
    internal static let celticBlue = ColorAsset(name: "Celtic Blue")
    internal static let goldenGateBridge = ColorAsset(name: "Golden Gate Bridge")
    internal static let indigo = ColorAsset(name: "Indigo")
    internal static let lavender = ColorAsset(name: "Lavender")
    internal static let majorelleBlue = ColorAsset(name: "Majorelle Blue")
    internal static let mango = ColorAsset(name: "Mango")
    internal static let oceanBlue = ColorAsset(name: "Ocean Blue")
    internal static let seaGreen = ColorAsset(name: "Sea Green")
    internal static let silverSand = ColorAsset(name: "Silver Sand")
    internal static let slateGray = ColorAsset(name: "Slate Gray")
    internal static let snow = ColorAsset(name: "Snow")
    internal static let grayColorButton = ColorAsset(name: "grayColor Button")
    internal static let grayColor = ColorAsset(name: "grayColor")
    internal static let textColor = ColorAsset(name: "textColor")
    internal static let topColor = ColorAsset(name: "topColor")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal private(set) lazy var swiftUIColor: SwiftUI.Color = {
    SwiftUI.Color(asset: self)
  }()
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Color {
  init(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  internal func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

internal extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
