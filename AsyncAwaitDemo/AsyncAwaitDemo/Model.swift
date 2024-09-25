//
//  Model.swift
//  AsyncAwaitDemo
//
//  Created by Vijay Kumar Munukoti on 9/23/24.
//

import Foundation

struct User : Codable {
    var userId: Int
    var id: Int
    var title: String
    
}

struct Album : Codable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String?
    var thumbnailUrl: String?
    
}

struct Post: Codable {
    
   var userId: Int
    var id: Int
    var title: String
    var body : String
}
