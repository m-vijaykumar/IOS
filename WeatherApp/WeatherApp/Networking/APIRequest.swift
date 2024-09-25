//
//  APIRequest.swift
//  WeatherApp
//
//  Created by Vijay Kumar Munukoti on 9/24/24.
//

import Foundation

class APIRequest {
    
    func fetch<T: Codable>(from apiURL: URL) async throws -> T? {
        
       var httpRequest = URLRequest(url: apiURL)
        httpRequest.httpMethod = "GET"
        
        do{
            let (data, response) = try await URLSession.shared.data(for: httpRequest)
            
            guard let httpResponse = (response as? HTTPURLResponse), httpResponse.statusCode == 200 || httpResponse.statusCode == 201 else {
                throw URLError(.badServerResponse)
            }
            
            let decodedData = try JSONDecoder().decode(T.self, from: data)
               return decodedData
        }catch{
            print(error)
            return nil
        }
     
        
    }
}
