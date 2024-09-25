//
//  APIViewModel.swift
//  APIs
//
//  Created by Vijay Kumar Munukoti on 9/16/24.
//

import Foundation

class APIViewModel {
    
    var model: [DataModel] = []
    
    func fetchData(complection:@escaping () -> Void) {
        if let apiurl = URL(string: "https://mocki.io/v1/24d87ac5-74ff-4dea-a74f-3958c5671fb6") {
            APIManager.apiManager.fetchData(model: [DataModel].self, apiURL: apiurl){
                [weak self] datalist in
                if let datalist = datalist {
                    self?.model = datalist
                    print(datalist)
                    complection()
                }
                
            }
        }
    }
}
