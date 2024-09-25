//
//  ViewModel.swift
//  APITableView
//
//  Created by Vijay Kumar Munukoti on 9/20/24.
//

import Foundation


class ViewModel{
   
    var movie: [MovieModel] = []
    var error: Any?
    var fetchDelegate : FetchDataDelegate!
    
    
    func getData()  {
        if let apiurl = URL(string: "https://gist.githubusercontent.com/dbackeus/484315/raw/dfeb530f9619bb74af5d537280a0b3b305410d01/videos.json") {
            APIRequest.shared.fetchData(model: [MovieModel].self, url: apiurl) { datalist in

                    switch datalist {
                    case .success(let movie):
                        self.movie = movie
                    case .failure(let error):
                        self.error = error.localizedDescription
                    }
                
                print("data printed")
                print(self.movie as Any)
                self.fetchDelegate.didFetchData()

                }
            }
    //        home.foodGroupsTableView.reloadData()
        }

    
    
}
