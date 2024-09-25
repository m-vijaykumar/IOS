//
//  ViewController.swift
//  AsyncAwaitDemo
//
//  Created by Vijay Kumar Munukoti on 9/23/24.
//

import UIKit

protocol updateDataDelegate {
    func onUpdate()
}

class ViewController: UIViewController {

    @IBOutlet weak var userCollectionView: UICollectionView!
    
    @IBOutlet weak var albumCollectionView: UICollectionView!
    
    var VM = ViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userCollectionView.dataSource = self
        albumCollectionView.dataSource = self
        VM.datadelegate = self
        
    }

}

extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.userCollectionView {
            return VM.userList.count
        }else{
            return VM.albumList.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == self.userCollectionView {
            let cell = userCollectionView.dequeueReusableCell(withReuseIdentifier: "userCell", for: indexPath) as? UserCollectionViewCell
            cell?.userIdLable.text = String(VM.userList[indexPath.row].userId)
            cell?.idLable.text = String(VM.userList[indexPath.row].id)
            cell?.titleLable.text = VM.userList[indexPath.row].title
            
            return cell ?? UICollectionViewCell()
            
        }else{
            let cell = albumCollectionView.dequeueReusableCell(withReuseIdentifier: "albumCell", for: indexPath) as? AlbumCollectionViewCell
            cell?.albumIdLabel.text = String(VM.albumList[indexPath.row].albumId )
            cell?.idLabel.text = String(VM.albumList[indexPath.row].id )
            cell?.titleLabel.text = VM.albumList[indexPath.row].title
            cell?.urlLabel.text = VM.albumList[indexPath.row].url!
            cell?.thumbnailUrlLabel.text = VM.albumList[indexPath.row].thumbnailUrl ?? " ee "
            
            return cell ?? UICollectionViewCell()
        }
      
    }
    
    
    
}


extension ViewController : updateDataDelegate {
    func onUpdate() {
        DispatchQueue.main.async {
            self.userCollectionView.reloadData()
            self.albumCollectionView.reloadData()
        }
    }
    
    
}
