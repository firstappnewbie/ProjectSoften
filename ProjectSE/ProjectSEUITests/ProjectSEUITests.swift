//
//  ProjectSEUITests.swift
//  ProjectSEUITests
//
//  Created by 3arthzneiz on 5/16/2559 BE.
//  Copyright © 2559 3arthzneiz. All rights reserved.
//

import XCTest

class ProjectSEUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
   
        
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        
        let app = XCUIApplication()
        let alert = app.alerts["Error"]
        let exists = NSPredicate(format: "exists == 1")
        app.buttons["register"].tap()
        
        let usernameTextField = app.textFields["username"]
        usernameTextField.tap()
        usernameTextField.typeText("Methus")
                app.buttons["SignUp"].tap()
        //TEST CASE 1 check input field
        XCTAssertTrue(app.alerts["Please"].exists)
        
        let deleteKey = XCUIApplication().keys["delete"]
        let okButton = app.alerts["Please"].collectionViews.buttons["OK"]
        okButton.tap()
        let okButton2 = app.alerts["PASSWORD"].collectionViews.buttons["OK"]
        let okButton3 = app.alerts["Error"].collectionViews.buttons["OK"]
        
        let usernameTextField2 = app.textFields["password"]
        usernameTextField2.tap()
        usernameTextField2.typeText("Earth")
        
        let usernameTextField3 = app.textFields["repeat password"]
        usernameTextField3.tap()
        usernameTextField3.typeText("Earthz")
        
        let usernameTextField4 = app.textFields["email"]
        usernameTextField4.tap()
        usernameTextField4.typeText("theimagecc")
        
        let usernameTextField5 = app.textFields["fullname"]
        usernameTextField5.tap()
        usernameTextField5.typeText("Methus Narksenee")
        
        let usernameTextField6 = app.textFields["contact"]
        usernameTextField6.tap()
        usernameTextField6.typeText("www.facebook.com")
        
        app.buttons["SignUp"].tap()
        
        //TEST CASE 2 check error password
        XCTAssertTrue(app.alerts["PASSWORD"].exists)
        okButton2.tap()
        
        usernameTextField3.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        usernameTextField3.typeText("Earth")
        
        
        
        
        app.buttons["SignUp"].tap()
        
        expectationForPredicate(exists, evaluatedWithObject: alert, handler: nil)
        waitForExpectationsWithTimeout(40, handler: nil)
        //TEST CASE 3 CHECK EMAIL
        XCTAssertTrue(app.alerts["Error"].exists)
        okButton3.tap()
        
       
        
        usernameTextField4.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        usernameTextField4.typeText("theimagecc@gmail.com")
        app.buttons["SignUp"].tap()
        
        
       
        expectationForPredicate(exists, evaluatedWithObject: alert, handler: nil)
        waitForExpectationsWithTimeout(40, handler: nil)
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //TEST CASE 4 CHECK ERROR
        XCTAssertFalse(app.alerts["Error"].exists)
        
    }
    
}
