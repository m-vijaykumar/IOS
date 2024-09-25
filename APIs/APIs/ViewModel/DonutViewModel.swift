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

class DonutViewModel : fetchViewModelDataDelegate {

    var model: Donut?
    
    init() {
    
        DonutAPIManager.donutAPIManager.delegate = self
    }
    
   
        func fetchData(){
            print(APIURL.donut.rawValue)
            if let apiurl = URL(string: APIURL.donut.rawValue){
                DonutAPIManager.donutAPIManager.fetchData(model: Donut.self, apiURL: apiurl)
            }
        }
    
    func fetchAPIData(_ datalist: Donut?) {
        print(datalist as Any)
        if let datalist = datalist {
            self.model = datalist
            print(datalist)
        }else{
            print("eroor")
        }
    }
}
