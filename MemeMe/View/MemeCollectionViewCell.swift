//
//  MemeCollectionViewCell.swift
//  MemeMe
//
//  Created by Krishnil Bhojani on 04/05/20.
//  Copyright © 2020 Krishnil Bhojani. All rights reserved.
//

import UIKit

class MemeCollectionViewCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .lightGray
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: frame.height).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
