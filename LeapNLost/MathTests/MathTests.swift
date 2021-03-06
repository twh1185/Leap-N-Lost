//
//  MathTests.swift
//  MathTests
//
//  Created by Anthony Wong on 2019-02-07.
//  Copyright © 2019 bcit. All rights reserved.
//

import XCTest
@testable import LeapNLost

class MathTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    /**
     * Test magnitude of a (1, 2, 2) vector.
     * Expected result is 3.
     */
    func testMagnitude() {
        let testVec : Vector3 = Vector3(1, 2, 2);
        let expected : Float = 3;
        
        assert(testVec.magnitude() == expected);
    }
    
    /**
     * Test normalization of a (10, 10, 10) vector.
     */
    func testNormalize() {
        let testVec : Vector3 = Vector3(10, 10, 10);
        let magnitude : Float = testVec.magnitude();
        let expectedVector = Vector3(testVec.x / magnitude, testVec.y / magnitude, testVec.z / magnitude);
        
        assert(testVec.normalize() == expectedVector);
    }
    
    /**
     * Test dot product.
     */
    func testDot() {
        let testVecLeft : Vector3 = Vector3(1, 2, 3);
        let testVectRight : Vector3 = Vector3(4, 5, 6);
        
        let expectedValue : Float = 32;
        
        assert(testVecLeft.dot(other: testVectRight) == expectedValue);
        
    }
    
    /**
     * Test projection by projecting y axis onto x axis.
     * Expected result is a zero vector.
     */
    func testProjection() {
        let testVecLeft : Vector3 = Vector3(0, 1, 0);
        let testVecRight : Vector3 = Vector3(1, 0, 0);
        
        let expectedVector : Vector3 = Vector3(0, 0, 0);
        
        assert(testVecLeft.project(other: testVecRight) == expectedVector);
    }

}
