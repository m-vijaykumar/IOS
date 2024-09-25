//
//  File.swift
//  Crashlytics
//
//  Created by Vijay Kumar Munukoti on 9/18/24.
//

import Foundation
import UIKit

func getData(apiURl : String){
    URLSession.shared.dataTask(with: apiURl){ data , response, error in
        
        if let error = error {
            return
        }
        
        if let data = data {
            
            do{
                let datalist = try JSONDecoder().decode(Decodable.Type, from: d)
            }
            catch{
                print("error")
                return
            }
            
           
        }
        
    }
    
    
}




