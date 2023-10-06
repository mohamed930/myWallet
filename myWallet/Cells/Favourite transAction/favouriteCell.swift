//
//  favouriteCell.swift
//  myWallet
//
//  Created by Mohamed Ali on 06/10/2023.
//

import UIKit

class favouriteCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func configureCell(_ model: persionModel) {
        titleLabel.text = model.title
        imageView.image = UIImage(named: model.imageName)
    }

}
