//
//  transActionDetailsController.swift
//  myWallet
//
//  Created by Mohamed Ali on 06/10/2023.
//

import UIKit

protocol payProtocol: NSObject {
    func pay()
}

class transActionDetailsController: UIViewController {
    
    @IBOutlet weak var transActionImageView: UIImageView!
    @IBOutlet weak var transActionTitleLabel: UILabel!
    @IBOutlet weak var transActionCategoryLabel: UILabel!
    @IBOutlet weak var transActionAmountLabel: UILabel!
    @IBOutlet weak var transActionView: UIView!
    @IBOutlet weak var dateTodayLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var transActionNumberLabel: UILabel!
    @IBOutlet weak var transActionCopyButton: UIButton!
    
    @IBOutlet weak var reportProblemView: UIView!
    @IBOutlet weak var secrueStackView: UIStackView!
    @IBOutlet weak var secureButton: UIButton!

    var flag: Bool!
    weak var delegate: payProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        if flag {
            reportProblemView.isHidden = false
            secrueStackView.isHidden = true
            secureButton.isHidden = true
        }
        else {
            reportProblemView.isHidden = true
            secrueStackView.isHidden = false
            secureButton.isHidden = false
        }
    }
    
    @IBAction func secureButtonAction (_ sender: Any) {
        print("button tapped!!")
        delegate?.pay()
    }
    
}
