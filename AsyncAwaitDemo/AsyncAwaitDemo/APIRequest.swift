//
//  APIRequest.swift
//  AsyncAwaitDemo
//
//  Created by Vijay Kumar Munukoti on 9/23/24.
//

import Foundation


class APIRequest {
    
    static let shared = APIRequest()
    
    func fetch<T: Decodable>(apiUrl: URL)async throws -> [T]? {
        
        do{
            let (data, response) = try await URLSession.shared.data(from: apiUrl)
            
            if ((response as? HTTPURLResponse)?.statusCode != 200) {
                return nil
            }
            
            let decoded = try JSONDecoder().decode([T].self, from: data)
            print(decoded)
            return decoded
            
        }catch{
            return nil
        }
        
    }

    
    
}
