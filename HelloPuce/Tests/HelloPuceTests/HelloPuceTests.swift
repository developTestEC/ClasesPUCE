import XCTest
@testable import HelloPuce

final class HelloPuceTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(HelloPuce(saludo:"Hello, World!").text, "Hello, World!")
    }
}
