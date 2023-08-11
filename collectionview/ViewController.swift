//
//  ViewController.swift
//  collectionview
//
//  Created by Apple on 26/07/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return a.count
    }
    var image = ["image1","image2","image3","image4"]
      var a = ["a","b","c","d"]
      
      
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! collectionViewCell
        cell.label1.text = a[indexPath.row]
        cell.image.image = UIImage(named: image[indexPath.row])
        cell.layer.cornerRadius = 5
        cell.layer.borderWidth = 5
        return cell
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        let size = (collectionView.frame.size.width-10)/2
        return CGSize(width: size, height: size)
    }

    
    }

