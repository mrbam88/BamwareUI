import SwiftUI
import BamwareSettings

public final class DefaultTheme: ObservableObject, ThemeService {
    @Published public private(set) var currentTheme: Theme

    private let settings: SettingsManager

    public init(settings: SettingsManager) {
        self.settings = settings
        let palette = settings.overrideColorScheme == .dark
            ? BrandingPalette(primary: .purple, secondary: .orange, background: .black, text: .white)
            : BrandingPalette.default
        self.currentTheme = Theme(palette: palette, colorScheme: settings.overrideColorScheme)
    }

    public func update() {
        let scheme = settings.overrideColorScheme
        let palette = scheme == .dark
            ? BrandingPalette(primary: .purple, secondary: .orange, background: .black, text: .white)
            : BrandingPalette.default
        self.currentTheme = Theme(palette: palette, colorScheme: scheme)
    }
}