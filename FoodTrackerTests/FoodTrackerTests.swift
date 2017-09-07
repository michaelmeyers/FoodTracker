//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Michael Meyers on 8/31/17.
//  Copyright © 2017 Michael Meyers. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal Class Test
    
    // Confirm that the Meal initialzer returns a Meal object when passed valid parramter.
    func testMealInitializationSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        //Highest positivie rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitialzationFails() {
        // Negative Rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Ratings exceed maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        //Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}
