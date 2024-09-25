//
//  libraryModel.swift
//  Chess
//
//  Created by Vijay Kumar Munukoti on 9/13/24.
//
import Foundation


struct Library {
    let name: String
    let location: String
    let books: [Book]
}

struct Book {
    let title: String
    let author: Author
    let publicationYear: Int
    let genres: [String]
}

struct Author {
    let name: String
    let birthYear: Int
    let nationality: String
}

