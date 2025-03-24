
import SwiftUI
import BamwareCore

public struct BrandingPalette {
    public static func theme(for tenantID: String, isDarkMode: Bool = false) -> Theme {
        switch tenantID {
        case "bamSocial":
            return Theme(
                tenantID: tenantID,
                primaryColor: isDarkMode ? .cyan : .blue,
                secondaryColor: .gray,
                backgroundColor: isDarkMode ? .black : .white,
                font: .body,
                isDarkMode: isDarkMode
            )
        default:
            return Theme(
                tenantID: tenantID,
                primaryColor: .blue,
                secondaryColor: .gray,
                backgroundColor: .white,
                font: .body,
                isDarkMode: false
            )
        }
    }
}
