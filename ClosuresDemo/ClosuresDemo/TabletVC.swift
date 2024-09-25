//
//  TabletVC.swift
//  ClosuresDemo
//
//  Created by Vijay Kumar Munukoti on 9/11/24.
//

import UIKit

class TabletVC: UIViewController , UITableViewDataSource , UITableViewDelegate{
  
    
    
    var c:[String] = []
    
    var country:((String) -> Void)?

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        
        tableView.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        c.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        
        cell.textLabel?.text = c[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        country?(c[indexPath.row])
        navigationController?.popViewController(animated: true)
    }
}
