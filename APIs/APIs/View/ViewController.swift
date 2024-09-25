//
//  ViewController.swift
//  APIs
//
//  Created by Vijay Kumar Munukoti on 9/16/24.
//

import UIKit

class ViewController: UIViewController, fetchViewModelDataDelegate {
   
    

    var viewModel = DonutViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        viewModel.fetchData {
//            print("sdsdsd")
//        }
        DonutAPIManager.donutAPIManager.delegate = self
       
        viewModel.fetchData()
        
        
    }
    func fetchAPIData<T>(_ datalist: T?) where T : Decodable {
        print(datalist as Any)
        let s = Array(arrayLiteral: datalist)
        print(s)
    }


}

