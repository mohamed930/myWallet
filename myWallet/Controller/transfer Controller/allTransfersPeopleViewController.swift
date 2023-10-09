//
//  allTransfersPeopleViewController.swift
//  myWallet
//
//  Created by Mohamed Ali on 08/10/2023.
//

import UIKit

class allTransfersPeopleViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        searchTextField.addPadding(amount: 40.0, PlaceHolder: myStrings.contactPlaceHolder, Color: myAssets.Color.silverSand.color)
    }

}
