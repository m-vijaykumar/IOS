//
//  ViewController.swift
//  Chess
//
//  Created by Vijay Kumar Munukoti on 9/12/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.frame.width / 8, height: view.frame.width / 8)
        layout.minimumInteritemSpacing = 0 // No spacing between columns
        layout.minimumLineSpacing = 0      // No spacing between rows
        
         collectionView.collectionViewLayout = layout
        
        collectionView.delegate = self
        
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 64
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        if ((indexPath.item / 8) + indexPath.item ) % 2 == 0 {
                    cell.backgroundColor = .green
                } else {
                    cell.backgroundColor = .yellow
                }

                return cell
        
    }

  

}

