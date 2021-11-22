//
//  Result.swift
//  WebServices
//
//  Created by Minh To on 2021-11-21.
//

import Foundation

struct Result: Codable {
    var tickers: [Ticker]
    
    enum CodingKeys: String, CodingKey {
        case result = "results"
    }
    
    func encode(to encoder: Encoder) throws {
        //do nothing
    }
    
    init(from decoder: Decoder) throws {
        let response = try decoder.container(keyedBy: CodingKeys.self)
        self.tickers = try response.decodeIfPresent([Ticker].self, forKey: CodingKeys.result)!
    }
}
