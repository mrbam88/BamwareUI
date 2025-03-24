
import XCTest
@testable import BamwareUI
import SwiftUI

@MainActor
final class SplashScreenTests: XCTestCase {
    func test_splashScreen_renders() {
        let sut = SplashScreen()
        
        XCTAssertNotNil(sut)
    }
}
