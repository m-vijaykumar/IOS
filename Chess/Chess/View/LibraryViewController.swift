//
//  LibraryViewController.swift
//  Chess
//
//  Created by Vijay Kumar Munukoti on 9/13/24.
//

import UIKit

class LibraryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    @IBOutlet weak var libraryTable: UITableView!
    
    let libraryViewModel = LibraryViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        libraryTable.delegate = self
        libraryViewModel.fetchData()
        
        print(libraryViewModel.libraryData[0].books)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Library"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        libraryViewModel.libraryData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = libraryTable.dequeueReusableCell(withIdentifier: "libraryCell", for: indexPath)
        cell.textLabel?.text = libraryViewModel.libraryData[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "booksVC") as! BooksVC
        vc.libraryIndex = indexPath.row
        navigationController?.pushViewController(vc, animated: true)
    }

}
