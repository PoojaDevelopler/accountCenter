//
//  accountCenterUITestsLaunchTests.swift
//  accountCenterUITests
//
//  Created by pnkbksh on 28/12/23.
//

import XCTest

final class accountCenterUITestsLaunchTests: XCTestCase {
    
    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        
       
        let userName = app.textFields["text1"]
        XCTAssertTrue(userName.waitForExistence(timeout: 1)) // Wait for the text field to appear
        
        userName.tap()
        userName.typeText("pooja")
        
        let pass = app.textFields["text2"]
        XCTAssertTrue(pass.waitForExistence(timeout: 1)) // Wait for the text field to appear
        
        pass.tap()
        pass.typeText("1232838937")
        
        let doneButton = app.buttons["Done"]
        XCTAssertTrue(doneButton.waitForExistence(timeout: 1)) // Wait for the button to appear
        doneButton.tap()

        let title = app.staticTexts["Welcome"]
        XCTAssertTrue(title.exists , "Welcomelabel not found")
        
    }
}
