//
//  TableItemVC.swift
//  ClosuresDemo
//
//  Created by Vijay Kumar Munukoti on 9/11/24.
//

import UIKit

class TableItemVC: UIViewController {
    
    let countries = ["USA","INDIA","MEXICO","LONDON"]

    @IBOutlet weak var countryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tableIteamButton(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Table") as! TabletVC
        
        vc.c = countries
        
        navigationController?.pushViewController(vc, animated: true)
        
        vc.country = { str in
           
            self.countryLabel.text = str
        }
    
    }
    
}
