//
//  DonutViewModel.swift
//  APIs
//
//  Created by Vijay Kumar Munukoti on 9/17/24.
//

import Foundation

protocol fetchViewModelDataDelegate {
    func fetchAPIData(_ datalist:Donut?)
}

protocol ViewModelDelegate {
    func fetchData()
}

class DonutViewModel : fetchViewModelDataDelegate , ViewModelDelegate {

    var donut: Donut?
    
    
    
    init(){
        DonutAPIManager.donutAPIManager.delegate = self
//        view.delegate = self
    }
        
    
    
   
    func fetchData(){
            print(APIURL.donut.rawValue)
            if let apiurl = URL(string: APIURL.donut.rawValue){
                DonutAPIManager.donutAPIManager.getAPIData(model: Donut.self, apiURL: apiurl)
                
            }
        }
    
    func fetchAPIData(_ datalist: Donut?) {
        print(datalist as Any)
        if let datalist = datalist {
            self.donut = datalist
            print(datalist)
        }else{
            print("eroor")
        }
    }
}
