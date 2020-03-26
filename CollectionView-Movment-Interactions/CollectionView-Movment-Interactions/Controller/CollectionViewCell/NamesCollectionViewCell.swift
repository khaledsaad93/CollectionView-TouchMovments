//
//  NamesCollectionViewCell.swift
//  MovementDemo
//
//  Created by khaled saad on 7/26/19.
//  Copyright © 2019 khaled saad. All rights reserved.
//

import UIKit

class NamesCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Public properties -
    @IBOutlet weak var nameLbl: UILabel!

    //MARK:Inialize
    override func awakeFromNib() {
        nameLbl.textColor = UIColor.black
    }
    
    
    func setModel(numbers: String) {
        nameLbl.text = numbers
    }
    
}
