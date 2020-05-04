//
//  MemeTableViewCell.swift
//  MemeMe
//
//  Created by Krishnil Bhojani on 04/05/20.
//  Copyright © 2020 Krishnil Bhojani. All rights reserved.
//

import UIKit

class MemeTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        textLabel?.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
