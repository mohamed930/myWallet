//
//  billCell.swift
//  myWallet
//
//  Created by Mohamed Ali on 07/10/2023.
//

import UIKit

class billCell: UITableViewCell {
    
    @IBOutlet weak var billTitleLabel:UILabel!
    @IBOutlet weak var billVectorImageView:UIImageView!
    @IBOutlet weak var billAmountLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureUI(_ model: transActionModel) {
        billTitleLabel.text = model.title
        billVectorImageView.image = UIImage(named: model.image)
        billAmountLabel.text = "Due: $\(model.amount)"
    }
    
}
