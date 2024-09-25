//
//  APIManager.swift
//  APIs
//
//  Created by Vijay Kumar Munukoti on 9/16/24.
//

import Foundation

class APIManager {
    
    static let apiManager = APIManager()
    
    private init() {}
    
    func fetchData<T: Decodable>(model:T.Type, apiURL:URL, completion:@escaping (T?) ->Void){
        URLSession.shared.dataTask(with: apiURL){data, response , error in
            if let e = error {
                print(e)
                return
            }
            guard let d = data else{
                return
            }
            print(d)
            do{
                let jsonString = String(data: d, encoding: .utf8)!
                print(jsonString)
                let apiData = try JSONDecoder().decode(T.self, from:d )
                completion(apiData)
            }catch{
                completion(nil)
            }
        }.resume()
    }
}
