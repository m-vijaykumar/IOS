//
//  PostViewController.swift
//  AsyncAwaitDemo
//
//  Created by Vijay Kumar Munukoti on 9/24/24.
//

import Foundation
import UIKit

protocol updatePostDelegate {
    func onUpdate()
}

class PostViewController : UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var VM = PostViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        VM.datadelegate = self
    }
    
}

extension PostViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VM.postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
        cell.textLabel?.text = VM.postList[indexPath.row].title
        return cell
    }
    
    
}
extension PostViewController : updatePostDelegate {
    func onUpdate() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    
}
