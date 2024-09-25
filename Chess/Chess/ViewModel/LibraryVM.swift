//
//  LibraryVM.swift
//  Chess
//
//  Created by Vijay Kumar Munukoti on 9/13/24.
//

import Foundation

class LibraryViewModel {
    
    var libraryData: [Library] = []
    
    
    func fetchData () {
        
        libraryData.append(Library(name: "Cincinnati Library, Downtown", location: "Cincinnati", books: [
        Book(
            title: "The Great Gatsby",
            author: Author(name: "F. Scott Fitzgerald", birthYear: 1896, nationality: "American"),
            publicationYear: 1925,
            genres: ["Fiction", "Classic", "Literary"]),
        Book(
            title: "To Kill a Mockingbird",
            author: Author(name: "Harper Lee", birthYear: 1926, nationality: "American"),
            publicationYear: 1960,
            genres: ["Fiction", "Classic", "Literary"])
        ]))
        
        libraryData.append(Library(name: "Houston Library, College Hill", location: "New York", books: [
        Book(
            title: "The Great Gatsby",
            author: Author(name: "F. Scott Fitzgerald", birthYear: 1896, nationality: "American"),
            publicationYear: 1925,
            genres: ["Fiction", "Classic", "Literary"]),
        Book(
            title: "To Kill a Mockingbird",
            author: Author(name: "Harper Lee", birthYear: 1926, nationality: "American"),
            publicationYear: 1960,
            genres: ["Fiction", "Classic", "Literary"]),
        Book(
            title: "The Fire Beach",
            author: Author(name: "Harper Lee", birthYear: 1926, nationality: "American"),
            publicationYear: 1960,
            genres: ["Fiction", "Classic", "Literary"]),
        Book(
            title: "Story OF Missing Girl",
            author: Author(name: "Harper Lee", birthYear: 1926, nationality: "American"),
            publicationYear: 1960,
            genres: ["Fiction", "Classic", "Literary"]),
        Book(
            title: "Bacon Hill",
            author: Author(name: "Harper Lee", birthYear: 1926, nationality: "American"),
            publicationYear: 1960,
            genres: ["Fiction", "Classic", "Literary"]),
        Book(
            title: "The Troops",
            author: Author(name: "Harper Lee", birthYear: 1926, nationality: "American"),
            publicationYear: 1960,
            genres: ["Fiction", "Classic", "Literary"])
        ]))
        
        
        

        
    }

    
}
