import SwiftUI

public struct SmartText: View {
    let text: String

    public init(_ text: String) {
        self.text = text
    }

    public var body: some View {
        Text(text)
            .font(.body)
            .foregroundColor(.primary)
    }
}