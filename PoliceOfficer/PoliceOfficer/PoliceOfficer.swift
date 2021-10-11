//
//  PoliceOfficer.swift
//  PoliceOfficer
//
//  Created by Minh To on 2021-09-28.
//

//Stored Properties  Police officer name and badge number
//isIlegallyParked():  Method accepts a Parking Meter and a Parked Car object.  Using the information provided by the parking meter and car, the method should return true if the car is illegally parked.
//issueTicket(): Accepts a ParkedCar object and generates a ParkingTicket for an illegally parked vehicle.


import Foundation

class PoliceOfficer {
    private var officerName: String
    private var badgeNumber: Int
    
    init(officerName: String, badgeNumber: Int) {
        self.officerName = officerName
        self.badgeNumber = badgeNumber
    }
    
    public func isIllegallyParked(parkingMeter: ParkingMeter, parkedCar: ParkedCar) -> Bool {
        return parkedCar.getMinutesParked() > parkingMeter.getMinutesPurchased()
    }
    
    public func issueTicket(parkedCar: ParkedCar) -> ParkingTicket {
        return ParkingTicket(illegallyParkedCar: parkedCar, issuingOfficer: self)
        
    }
    
    public func show() {
        print(self.officerName)
        print(self.badgeNumber)
    }
}
