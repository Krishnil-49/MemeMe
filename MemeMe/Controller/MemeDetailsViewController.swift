//
//  MemeDetailsViewController.swift
//  MemeMe
//
//  Created by Krishnil Bhojani on 05/05/20.
//  Copyright © 2020 Krishnil Bhojani. All rights reserved.
//

import UIKit

class MemeDetailsViewController: UIViewController {

    let memeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(memeImageView)
        
        memeImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        memeImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        memeImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        memeImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super .viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
}
