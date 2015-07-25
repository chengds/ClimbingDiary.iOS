//
//  DiaryEntryTemp.swift
//  climbingdiary
//
//  This is a class holding data to be used temporarily to test the interface.
//
//  Created by Developer on 7/26/15.
//  Copyright © 2015 Wednesday Warriors. All rights reserved.
//

import Foundation

class DiaryEntryTemp: NSObject {
    
    // MARK: Properties
    var entryDate: String
    var climbingType: String
    var placeClimbed: String
    
    // MARK: Initialization
    init(entryDate: String, climbingType: String, placeClimbed: String) {
        self.entryDate = entryDate
        self.climbingType = climbingType
        self.placeClimbed = placeClimbed
    }
}