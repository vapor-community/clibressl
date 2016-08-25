import XCTest
@testable import CLibreSSL

class CLibreSSLTests: XCTestCase {
    static var allTests = [
        ("testHash", testHash)
    ]

    func testHash() {
        let data: [UInt8] = [0x40, 0x41]
        var digest = [UInt8](repeating: 0, count: Int(SHA_DIGEST_LENGTH))
        SHA1(data, data.count, &digest)
        XCTAssertEqual(digest, [136, 15, 138, 231, 110, 184, 110, 179, 100, 68, 105, 45, 9, 111, 198, 194, 100, 146, 254, 225])
    }
}
