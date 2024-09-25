//
//  TextItemVC.swift
//  ClosuresDemo
//
//  Created by Vijay Kumar Munukoti on 9/11/24.
//

import UIKit

class TextItemVC: UIViewController {

    @IBOutlet weak var TextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func textItemButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Text") as! TextVC
        
        navigationController?.pushViewController(vc, animated: true)
        
        vc.userText = {
            str in
            self.TextLabel.text = str
        }
    
    }


}
