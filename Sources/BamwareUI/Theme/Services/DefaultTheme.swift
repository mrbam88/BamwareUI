
import SwiftUI

public struct DefaultTheme: ThemeService {
    public func currentTheme() -> Theme {
        return Theme(
            tenantID: "default",
            primaryColor: .blue,
            secondaryColor: .gray,
            backgroundColor: .white,
            font: .body,
            isDarkMode: false
        )
    }
}
    