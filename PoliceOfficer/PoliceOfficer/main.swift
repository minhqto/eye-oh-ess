//
//  main.swift
//  PoliceOfficer
//
//  Created by Minh To on 2021-09-27.
//

import Foundation

var parkingMeter = ParkingMeter(mp: 60)
var parkedToyota = ParkedCar(model: "Corolla", licensePlate: "CACY075", minutesParked: 170, minutesPurchased: parkingMeter)

var police = PoliceOfficer(officerName: "Jessica Lu", badgeNumber: 12345)

var isIllegallyParked = police.isIllegallyParked(parkingMeter: parkingMeter, parkedCar: parkedToyota)

if (isIllegallyParked) {
    let ticket = police.issueTicket(parkedCar: parkedToyota)
    print(ticket.getParkingFineAmount())
}

