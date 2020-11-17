import XCTest
@testable import LoginTest

final class LoginTestTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LoginTest().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
