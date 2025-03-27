import SwiftUI

public struct BrandingPalette {
    public let primary: Color
    public let secondary: Color
    public let background: Color
    public let text: Color

    public static let `default` = BrandingPalette(
        primary: .blue,
        secondary: .green,
        background: .white,
        text: .black
    )

    public init(primary: Color, secondary: Color, background: Color, text: Color) {
        self.primary = primary
        self.secondary = secondary
        self.background = background
        self.text = text
    }
}