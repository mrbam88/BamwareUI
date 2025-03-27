import SwiftUI
import BamwareSettings

public final class BrandingManager: ObservableObject {
    @Published public private(set) var palette: BrandingPalette = .default

    public init() {}

    public func update(from colorScheme: ColorScheme?) {
        palette = colorScheme == .dark
            ? BrandingPalette(primary: .purple, secondary: .orange, background: .black, text: .white)
            : .default
    }
}