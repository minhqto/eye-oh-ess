//
//  ParkedCar.swift
//  PoliceOfficer
//
//  Created by Minh To on 2021-09-28.
//
//ParkedCar:  Models a car.  Contains the following stored properties:
//Car model, such as a Toyota Corolla
//License plate number, such as AFGR 255
//Number of minutes parked:  Describes the total number of minutes the vehicle has been parked.  The number of minutes parked could be more, less, or equal to the number of minutes that were purchased by the driver.

import Foundation

class ParkedCar {
    private var model: String
    private var licensePlate: String
    private var minutesParked: Int
    private var minutesPurchased: ParkingMeter
    
    init(model: String, licensePlate: String, minutesParked: Int, minutesPurchased: ParkingMeter) {
        self.model = model
        self.licensePlate = licensePlate
        self.minutesParked = minutesParked
        self.minutesPurchased = minutesPurchased
    }
    
    public func show() {
        print(self.model)
        print(self.licensePlate)
        print(self.minutesParked)
    }
    
    public func getMinutesParked() -> Int {
        return self.minutesParked
    }
    
    public func getMinutesPurchased() -> Int {
        return self.minutesPurchased.getMinutesPurchased()
    }
}
