//
//  DonutAPIManager.swift
//  APIs
//
//  Created by Vijay Kumar Munukoti on 9/17/24.
//

import Foundation



class DonutAPIManager{

    
    static let donutAPIManager = DonutAPIManager()
    
    var delegate: fetchViewModelDataDelegate!
    
    private init() {}
    
    func fetchData<T: Decodable>(model:T.Type, apiURL: URL){
        
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
             
                let apiData = try JSONDecoder().decode(T.self, from:d )
               // print(apiData)
                
                
                self.delegate.fetchAPIData(apiData as? Donut )
            }catch{
                
//                self.ViewModelDelegate.fetchAPIData(nil)
                print("eroor dsfd rfa erfa ef ae")
            }
        }.resume()
        
    }
}
