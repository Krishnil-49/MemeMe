//
//  SharedMemesCollectionViewController.swift
//  MemeMe
//
//  Created by Krishnil Bhojani on 04/05/20.
//  Copyright © 2020 Krishnil Bhojani. All rights reserved.
//

import UIKit

class SharedMemesCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{

    let cellId = "MemeCollectionViewCell"
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(MemeCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        collectionView.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MemeCollectionViewCell
        cell.imageView.image = memes[indexPath.row].memedImage
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let memeDetailsViewController = MemeDetailsViewController()
        memeDetailsViewController.memeImageView.image = memes[indexPath.row].memedImage
        navigationController?.pushViewController(memeDetailsViewController, animated: true)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let dimension = (collectionView.frame.width)/3
        return CGSize(width: dimension, height: dimension * 1.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
