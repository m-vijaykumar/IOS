//
//  TextVC.swift
//  ClosuresDemo
//
//  Created by Vijay Kumar Munukoti on 9/11/24.
//

import UIKit

class TextVC: UIViewController {

    var userText: ((String) -> Void)?
    
    
    @IBOutlet weak var userTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendButton(_ sender: Any) {
        
        if let t = userTF.text {
            userText?(t)
        }
        
        navigationController?.popViewController(animated: true)
        
    }
    
}
