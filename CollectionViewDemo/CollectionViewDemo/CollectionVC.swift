//
//  CollectionVC.swift
//  CollectionViewDemo
//
//  Created by Vijay Kumar Munukoti on 9/11/24.
//

import UIKit

class CollectionVC: UIViewController, UICollectionViewDataSource{
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    struct Product {
        var image:String
        var title:String
        var description:String
        var price:Float
    }
    let data = [
        Product(image: "eraser.fill", title: "Eraser", description: "longlasting Eraser", price: 22.33),
        Product(image: "pencil", title: "Eraser", description: "longlasting pencil", price: 22.33),
        Product(image: "trash", title: "trash", description: "longlasting Eraser", price: 22.33),
        Product(image: "folder", title: "Eraser", description: "longlasting Eraser", price: 22.33),
        Product(image: "tray", title: "tray", description: "longlasting Eraser", price: 22.33),
        Product(image: "clipboard.fill", title: "Eraser", description: "longlasting Eraser", price: 22.33),
        Product(image: "cricket.ball", title: "cricket Ball", description: "longlasting Eraser", price: 12.99),
        Product(image: "trophy.fill", title: "trophy", description: "longlasting Eraser", price: 12.55)
    ]
    
    var filterData = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
        filterData = data
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        filterData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! CollectionViewCell
        
        cell.productImageView.image = UIImage.init(systemName: filterData[indexPath.row].image)
        cell.productLable.text = filterData[indexPath.row].title
        cell.productDescription.text = filterData[indexPath.row].description
        cell.productPrice.text = String(filterData[indexPath.row].price)
        
        return cell
    }

}

extension CollectionVC : UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            filterData = data
            self.collectionView.reloadData()
        }else{
            
            self.filterData = data.filter { return $0.title.contains(searchText) || $0.description.contains(searchText) || String($0.price).contains(searchText) }
            self.collectionView.reloadData()
        }
    }
}
