//
//  BasicXCTest1UITests.swift
//  BasicXCTest1UITests
//
//  Created by Rick Mc on 4/19/20.
//  Copyright © 2020 Rick Mc. All rights reserved.
//

import XCTest

class when_increment_button_is_pressed: XCTestCase {
        
    override func setUp() {
       continueAfterFailure = false
     }
    
    func test_should_update_label_successfully(){
        let app = XCUIApplication()
        app.launch()
        
        let mainTextField = XCUIApplication().textFields["textSpace"]

        mainTextField.tap()
        mainTextField.typeText("There were open source projects and free software before Linux was there. Linux in many ways is one of the more visible and one of the bigger technical projects in this area, and it changed how people looked at it because Linux took both the practical and ideological approach.")
        let dataForTextField = mainTextField.value as? String
        
        XCTAssertEqual(mainTextField.value as? String, "There were open source projects and free software before Linux was there. Linux in many ways is one of the more visible and one of the bigger technical projects in this area, and it changed how people looked at it because Linux took both the practical and ideological approach.")
    }
    
}
