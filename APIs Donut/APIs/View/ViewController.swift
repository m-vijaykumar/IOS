//
//  ViewController.swift
//  APIs
//
//  Created by Vijay Kumar Munukoti on 9/16/24.
//

import UIKit



class ViewController: UIViewController {
    
    
    var viewModel = DonutViewModel()
    
    
    @IBOutlet weak var donutLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var delegate = ViewModelDelegate?

      
    
        viewModel.fetchData()
        
    }
    
    @IBAction func getBuuton(_ sender: Any) {
        donutLable.text =  viewModel.donut?.id
    }
    
    

}



