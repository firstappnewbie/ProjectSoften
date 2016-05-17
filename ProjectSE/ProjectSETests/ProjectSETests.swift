//
//  ProjectSETests.swift
//  ProjectSETests
//
//  Created by 3arthzneiz on 5/12/2559 BE.
//  Copyright © 2559 3arthzneiz. All rights reserved.
//
import ProjectSE
import XCTest
import UIKit
import Parse

class ProjectSETests: XCTestCase {
    
    override func setUp() {
        
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        //Parse.enableLocalDatastore()
        let parseConfiguration = ParseClientConfiguration(block: { (ParseMutableClientConfiguration) -> Void in
            ParseMutableClientConfiguration.applicationId = "instragram3377HGYC"
            ParseMutableClientConfiguration.clientKey = "uefrghhjasw123"
            ParseMutableClientConfiguration.server = "https://instragram3428.herokuapp.com/parse"
        })
        
        Parse.initializeWithConfiguration(parseConfiguration)
       
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the         super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssertp andlated functions to verify your tests produce the correct results
        
        let test = Mytest()
        let test2 = Mytest2()
        //TEST CASE 1 check login successfull
        XCTAssertNotNil(test.testunit("3arthzneiz", b: "3arthzneiz"))
        //TEST CASE 2 check count post
        XCTAssertEqual(test2.testunit(),3)
        //TEST CASE 3 check count picture
        XCTAssertEqual(test2.testunit(),3)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    

}