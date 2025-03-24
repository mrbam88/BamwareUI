// ~/c/bamware/BamwareUI/Tests/BamwareUITests/BrandingPaletteTests.swift
import XCTest
@testable import BamwareUI
import SwiftUI

@MainActor
final class BrandingPaletteTests: XCTestCase {
    func test_themeForBamSocial_returnsCorrectTheme() {
        let theme = BrandingPalette.theme(for: "bamSocial", isDarkMode: false)
        
        XCTAssertEqual(theme.tenantID, "bamSocial")
        XCTAssertEqual(theme.primaryColor, .blue)
        XCTAssertEqual(theme.secondaryColor, .gray)
        XCTAssertEqual(theme.backgroundColor, .white)
        XCTAssertEqual(theme.font, .body)
        XCTAssertFalse(theme.isDarkMode)
    }
    
    func test_themeForBamSocialDark_returnsCorrectTheme() {
        let theme = BrandingPalette.theme(for: "bamSocial", isDarkMode: true)
        
        XCTAssertEqual(theme.tenantID, "bamSocial")
        XCTAssertEqual(theme.primaryColor, .cyan)
        XCTAssertEqual(theme.secondaryColor, .gray)
        XCTAssertEqual(theme.backgroundColor, .black)
        XCTAssertEqual(theme.font, .body)
        XCTAssertTrue(theme.isDarkMode)
    }
}
