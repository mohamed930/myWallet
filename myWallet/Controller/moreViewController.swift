//
//  moreViewController.swift
//  myWallet
//
//  Created by Mohamed Ali on 07/10/2023.
//

import UIKit

class moreViewController: UIViewController {
    
    @IBOutlet weak var aboutUsView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationController?.isNavigationBarHidden = true
        addTapGuesterAboutUs()
    }
    
    
    func addTapGuesterAboutUs() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleMore))
        tap.numberOfTapsRequired = 1
        aboutUsView.isUserInteractionEnabled = true
        
        aboutUsView.addGestureRecognizer(tap)
    }

    
    @objc func handleMore() {
        guard let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "aboutUsVC") else { return }
        navigationController?.pushViewController(nextVc, animated: true)
//        present(nextVc, animated: true)rrrrrr
    }
}
