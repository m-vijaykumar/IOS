//
//  PostViewTable.swift
//  AsyncAwaitDemo
//
//  Created by Vijay Kumar Munukoti on 9/24/24.
//



import Foundation


class PostViewModel {
    
    var datadelegate : updatePostDelegate?
    
    var  postList : [Post] = []
    {
        didSet {
            datadelegate?.onUpdate()
        }
    }

    
    init() {
        Task {
            do {
                
                postList = try await APIRequest.shared.fetch(apiUrl: URL(string: "https://jsonplaceholder.typicode.com/posts")!)
                ?? []

                datadelegate?.onUpdate()
            } catch {
                print("Error: \(error)")
            }
        }
        
    }
    
}
