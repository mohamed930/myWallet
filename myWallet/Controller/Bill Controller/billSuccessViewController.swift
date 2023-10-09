//
//  billSuccessViewController.swift
//  myWallet
//
//  Created by Mohamed Ali on 08/10/2023.
//

import UIKit

class billSuccessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    @IBAction func backToHome (_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let homeScreen = story.instantiateViewController(withIdentifier: "homeVC")
        homeScreen.modalPresentationStyle = .fullScreen
        present(homeScreen, animated: true)
    }
}
