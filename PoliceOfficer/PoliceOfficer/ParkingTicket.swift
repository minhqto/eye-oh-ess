//
//  ParkingTicket.swift
//  PoliceOfficer
//
//  Created by Minh To on 2021-09-28.
//

//ParkingTicket:  Models a parking ticket that is issued to a car by a police officer
//parkingFineAmount:    Computed property that returns the parking fine.  Fines are calculated as $25 for the first illegally parked hour, and $10 for each additional hour afterwards
//displayCarInfo(): Method that displays information about the illegally parked vehicle
//displayOfficerInformation():  Method that displays information about the police officer who issued the ticket.
import Foundation

class ParkingTicket {
    private var parkingFineAmount: Double
    private var illegallyParkedCar: ParkedCar
    private var issuingOfficer: PoliceOfficer
    
    init(illegallyParkedCar: ParkedCar, issuingOfficer: PoliceOfficer){
        self.illegallyParkedCar = illegallyParkedCar
        self.issuingOfficer = issuingOfficer
        
        let minutesOverParked = self.illegallyParkedCar.getMinutesParked() - self.illegallyParkedCar.getMinutesPurchased()
       
        if(minutesOverParked >= 60) {
            self.parkingFineAmount = 25.00
            self.parkingFineAmount += Double(10 * (minutesOverParked / 60).round(.towardZero))
        } else if (minutesOverParked < 60) {
            self.parkingFineAmount = 25.00
        } else {
            self.parkingFineAmount = 0.0
        }
        
    }
    
    public func displayCarInfo() {
        illegallyParkedCar.show()
    }
    
    public func displayOfficerInformation() {
        self.issuingOfficer.show()
    }
    
    public func getParkingFineAmount() -> Double {
        return self.parkingFineAmount
    }
}

