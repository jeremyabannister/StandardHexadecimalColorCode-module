//
//  StandardHexadecimalColorCode_tests.swift
//  
//
//  Created by Jeremy Bannister on 4/25/23.
//

///
final class StandardHexadecimalColorCode_tests: XCTestCase {
    
    ///
    func test_init_rgba() throws {
        
        ///
        func randomizedTest() throws {
            
            ///
            let rgba: ColorCode_RGBA_256 = .generateRandom()
            
            ///
            try StandardHexadecimalColorCode(
                rgba: rgba
            )
                .assert(\.rgbaColorCode, equals: rgba)
        }
        
        ///
        for _ in (0 ... 1_000) {
            try randomizedTest()
        }
    }
}

///
extension StandardHexadecimalColorCode_tests {
    
    ///
    func test_failable_init_String() throws {
        
        ///
        func randomizedTest() throws {
            
            ///
            let rgba = ColorCode_RGBA_256.generateRandom()
            
            ///
            try! StandardHexadecimalColorCode(rgba.asHexString)
                .assertEqual(to: .init(rgba: rgba))
        }
        
        ///
        for _ in (0 ... 1_000) {
            try randomizedTest()
        }
    }
}



///
extension StandardHexadecimalColorCode: Testable { }
