//
//  MyCollectionViewCell.swift
//  CollectionView_in_TableViewCell
//
//  Created by Pheayuth's iMac on 2/1/24.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImage: UIImageView!
    static var identifier = "MyCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    public func configure(with model: Model){
        self.myLabel.text = model.title
        self.myImage.image = UIImage(named: model.image)
    }

}
