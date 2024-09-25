//
//  PropertyViewController.swift
//  Chess
//
//  Created by Vijay Kumar Munukoti on 9/12/24.
//

import UIKit

class PropertyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var imageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize( width:(collectionView.bounds.width - 30 ) / 3, height: (collectionView.bounds.height - 30 ) / 3)
//        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 10
   
        
        collectionView.collectionViewLayout = layout
 
     
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.collectionView {
            return 9
        }else {
            return 5
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.imageCollectionView {
            
            let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCollectionViewCell
            
            imageCell.PropertyImage.image = UIImage.init(systemName: "building")
            
            return imageCell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "propertyCell", for: indexPath) as! PropertyCell
        
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 3
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 0.1

        
        cell.propertyLable.text = "Property Rent"
        cell.propertyImage.image = UIImage.init(systemName: "building")
        return cell
    }
    

}


extension PropertyViewController {
    
    
    
}
