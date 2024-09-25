//
//  ViewModel.swift
//  AsyncAwaitDemo
//
//  Created by Vijay Kumar Munukoti on 9/23/24.
//

import Foundation


class ViewModel {
    var datadelegate : updateDataDelegate?
    
    var  userList : [User] = []
    {
        didSet {
            datadelegate?.onUpdate()
        }
    }
    
    var albumList : [Album] = []
    {
        didSet {
            datadelegate?.onUpdate()
        }
    }
    
    init() {
        Task {
            do {
                
                userList = try await APIRequest.shared.fetch(apiUrl: URL(string: "https://jsonplaceholder.typicode.com/albums")!)
                ?? []
                
            
                
                albumList = try await APIRequest.shared.fetch(apiUrl: URL(string: "https://jsonplaceholder.typicode.com/photos")!)
                ?? []
            
                datadelegate?.onUpdate()
            } catch {
                print("Error: \(error)")
            }
        }
        
    }
    
}
