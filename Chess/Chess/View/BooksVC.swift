//
//  LibraryViewController.swift
//  Chess
//
//  Created by Vijay Kumar Munukoti on 9/13/24.
//

import UIKit

class BooksVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    @IBOutlet weak var booksTable: UITableView!
    
    var libraryViewModel = LibraryViewModel()
    var libraryIndex:Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        booksTable.delegate = self
        libraryViewModel.fetchData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
  
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Books"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let index = libraryIndex {
            return libraryViewModel.libraryData[index].books.count
        }else {
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let index = libraryIndex {
            let cell = booksTable.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
            cell.textLabel?.text = libraryViewModel.libraryData[index].books[indexPath.row].title
            
            return cell
        }else {
            return UITableViewCell()
        }
        
        
    }

}
