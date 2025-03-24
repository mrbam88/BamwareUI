
import SwiftUI

public struct Theme {
    public let tenantID: String
    public let primaryColor: Color
    public let secondaryColor: Color
    public let backgroundColor: Color
    public let font: Font
    public let isDarkMode: Bool
    
    public init(tenantID: String, primaryColor: Color, secondaryColor: Color, backgroundColor: Color, font: Font, isDarkMode: Bool) {
        self.tenantID = tenantID
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.backgroundColor = backgroundColor
        self.font = font
        self.isDarkMode = isDarkMode
    }
}
