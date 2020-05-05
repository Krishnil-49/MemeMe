//
//  SharedMemesTableViewController.swift
//  MemeMe
//
//  Created by Krishnil Bhojani on 04/05/20.
//  Copyright © 2020 Krishnil Bhojani. All rights reserved.
//

import UIKit

class SharedMemesTableViewController: UITableViewController {

    let cellId = "MemeTableViewCell"
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 150
        tableView.register(MemeTableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MemeTableViewCell
        cell.imageView?.image = memes[indexPath.row].memedImage
        cell.textLabel?.text = "\(memes[indexPath.row].topText)...\(memes[indexPath.row].bottomText)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let memeDetailsViewController = MemeDetailsViewController()
        memeDetailsViewController.memeImageView.image = memes[indexPath.row].memedImage
        navigationController?.pushViewController(memeDetailsViewController, animated: true)
    }
    
}
