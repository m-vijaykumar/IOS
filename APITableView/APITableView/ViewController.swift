//
//  ViewController.swift
//  APITableView
//
//  Created by Vijay Kumar Munukoti on 9/20/24.
//

import UIKit
protocol FetchDataDelegate {
   func didFetchData()
    
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = ViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.fetchDelegate = self
        viewModel.getData()
    }


}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.movie[0].transcodings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        cell.textLabel?.text = viewModel.movie[0].transcodings[indexPath.row].title
        
        return cell
    }
    
    
}

extension ViewController : FetchDataDelegate{
    func didFetchData() {
        print(viewModel.movie as Any)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
    
    
}

