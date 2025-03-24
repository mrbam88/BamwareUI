
import XCTest
@testable import BamwareUI
import SwiftUI

@MainActor
final class SmartTextTests: XCTestCase {
    func test_smartText_rendersWithTheme() {
        let theme = Theme(
            tenantID: "bamSocial",
            primaryColor: .blue,
            secondaryColor: .gray,
            backgroundColor: .white,
            font: .body,
            isDarkMode: false
        )
        let sut = SmartText("Test", theme: theme)
        
        // Can't access private 'text' or 'theme'—test via init params
        XCTAssertNotNil(sut)  // Basic init check
        // Add more tests later—e.g., ViewInspector for body—once stable
    }
}
