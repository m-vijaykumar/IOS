//
//  APIRequest.swift
//  APITableView
//
//  Created by Vijay Kumar Munukoti on 9/20/24.
//

import Foundation


class APIRequest {
    
    static let shared = APIRequest()
    
    private init() {}
    
    
    func fetchData<T: Decodable>(model: T.Type, url: URL, completion: @escaping(Result<T, Error>) -> Void){
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            if let error = error{
                completion(.failure(error))
                return
            }
            guard let data = data else{
                let error = NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey:"No data"])
                completion(.failure(error))
                return
            }
            do{
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                print(decodedData)
                completion(.success(decodedData))
            } catch  {
                print(error.localizedDescription)
                completion(.failure(error))
            }
        }.resume()
    }
}
  
