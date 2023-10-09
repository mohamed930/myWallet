// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum myStrings {
  /// Search biller
  internal static let billerPlaceHolder = myStrings.tr("Localizable", "billerPlaceHolder", fallback: "Search biller")
  /// Search contact
  internal static let contactPlaceHolder = myStrings.tr("Localizable", "contactPlaceHolder", fallback: "Search contact")
  /// Localizable.strings
  ///   myWallet
  /// 
  ///   Created by Mohamed Ali on 06/10/2023.
  internal static let hello = myStrings.tr("Localizable", "hello", fallback: "Hello")
  /// Value goes here
  internal static let searchPlaceHolder = myStrings.tr("Localizable", "searchPlaceHolder", fallback: "Value goes here")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension myStrings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

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
