//
//  transActionCell.swift
//  myWallet
//
//  Created by Mohamed Ali on 06/10/2023.
//

import UIKit

class transActionCell: UITableViewCell {
    
    @IBOutlet weak var transActionTitleLabel: UILabel!
    @IBOutlet weak var transActionImageView: UIImageView!
    @IBOutlet weak var transActionDateLabel: UILabel!
    @IBOutlet weak var transActionAmountLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureUI(_ model: transActionModel) {
        transActionTitleLabel.text  = model.title
        transActionImageView.image  = UIImage(named: model.image)
        transActionDateLabel.text   = model.date
        
        if model.type {
            transActionAmountLabel.text = "+$\(model.amount)"
            transActionAmountLabel.textColor = myAssets.Color.seaGreen.color
        }
        else {
            transActionAmountLabel.text = "-$\(model.amount)"
            transActionAmountLabel.textColor = myAssets.Color.goldenGateBridge.color
        }
        
        
    }
}
