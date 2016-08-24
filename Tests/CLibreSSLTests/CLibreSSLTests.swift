import XCTest
@testable import CLibreSSL

class CLibreSSLTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(CLibreSSL().text, "Hello, World!")
    }


    static var allTests : [(String, (CLibreSSLTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
