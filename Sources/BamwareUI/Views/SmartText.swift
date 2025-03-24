
import SwiftUI
import BamwareCore

public struct SmartText: View {
    private let text: String
    private let theme: Theme
    
    public init(_ text: String, theme: Theme) {
        self.text = text
        self.theme = theme
    }
    
    public var body: some View {
        Text(text)
            .foregroundColor(theme.primaryColor)
            .font(theme.font)
    }
}
