//
//  ParkingMeter.swift
//  PoliceOfficer
//
//  Created by Minh To on 2021-09-27.
//

import Foundation

class ParkingMeter {
    private var minutesPurchased: Int
    
    init(mp: Int) {
        self.minutesPurchased = mp > 0 ? mp : 0
    }
    
    public func getMinutesPurchased() -> Int {
        return self.minutesPurchased
    }
}
