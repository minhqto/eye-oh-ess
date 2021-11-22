//
//  APIService.swift
//  WebServices
//
//  Created by Minh To on 2021-11-21.
//

import Foundation

class APIService {
    let apiEndpoint = "https://api.polygon.io/v3/reference/tickers?apiKey=YKMERnT0YR01MUU1pPW2oeiJNVqdwan3&ticker=AAPL"
    private static var shared: APIService?
    
    static func getInstance() -> APIService {
        if (shared == nil) {
            shared = APIService()
        }
        return shared!
    }
    
    func fetchData() {
        guard let apiUrl = URL(string: apiEndpoint) else {
            return
        }
        
        URLSession.shared.dataTask(with: apiUrl) {
            (data, response, error) in
            
            if let err = error {
                print(err)
                return
            }
            
            if let jsonData = data {
                do {
                    let decoder = JSONDecoder()
                    let result = try decoder.decode(Result.self, from: jsonData)
                    
                    
                } catch let error {
                    print(error)
                }
            }
        }.resume()
    }
}
