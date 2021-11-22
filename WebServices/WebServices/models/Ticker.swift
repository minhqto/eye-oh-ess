//
//  Ticker.swift
//  WebServices
//
//  Created by Minh To on 2021-11-20.
//

import Foundation

struct Ticker : Codable {
    var companyName: String
    var currency: String
    var primaryExchange: String
    
    //mapping API response keys with the struct property names
    enum CodingKeys: String, CodingKey {
        case companyName = "name"
        case currency = "currency_name"
        case primaryExhange = "primary_exchange"
    }
    
    func encode(to encoder: Encoder) throws {
        //do nothing
    }
    
    init(from decoder: Decoder) throws {
        let response = try decoder.container(keyedBy: CodingKeys.self)
        self.companyName = try response.decodeIfPresent(String.self, forKey: CodingKeys.companyName) ?? ""
        self.currency = try response.decodeIfPresent(String.self, forKey: CodingKeys.currency) ?? ""
        self.primaryExchange = try response.decodeIfPresent(String.self, forKey: CodingKeys.primaryExhange) ?? ""
    }
}
