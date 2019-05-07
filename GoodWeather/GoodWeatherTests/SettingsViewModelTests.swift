//
//  SettingsViewModelTests.swift
//  GoodWeatherTests
//
//  Created by MAC on 5/7/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import GoodWeather

class SettingsViewModelTests: XCTestCase {

    private var settingVM: SettingsViewModel!
    
    override func setUp() {
        super.setUp()
        self.settingVM = SettingsViewModel()
    }
    
    func test_should_return_correct_display_name_for_fahrenheit() {
        XCTAssertEqual(self.settingVM.selectedUnit.displayName, "Fahrenheit")
    }
    
    func test_should_make_sure_that_default_selected_unit_is_fahrenheit() {
         XCTAssertEqual(settingVM.selectedUnit, .fahrenheit)
    }
    
    func test_shoukd_be_able_to_save_user_unit_selection() {
        
        self.settingVM.selectedUnit = .celsius
        let userDefaults = UserDefaults.standard
        XCTAssertNotNil(userDefaults .value(forKey: "unit"))
    }
    
    override func tearDown() {
        super.tearDown()
        
        let userDefaults = UserDefaults.standard
        userDefaults.removeObject(forKey: "unit")
    }
}
