//
//  moreViewController.swift
//  myWallet
//
//  Created by Mohamed Ali on 07/10/2023.
//

import UIKit

class moreViewController: UIViewController {
    
    @IBOutlet weak var billView:UIView!
    @IBOutlet weak var aboutUsView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationController?.isNavigationBarHidden = true
        addTapGuesterAboutUs()
        addTapGuesterPayBill()
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
    }
    
    func addTapGuesterPayBill() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleBill))
        tap.numberOfTapsRequired = 1
        billView.isUserInteractionEnabled = true
        
        billView.addGestureRecognizer(tap)
    }
    
    @objc func handleBill() {
        let story = UIStoryboard(name: "payBillView", bundle: nil)
        guard let nextVc: allBillsViewController = story.instantiateViewController(withIdentifier: "allBillsViewController") as? allBillsViewController else { return }
        navigationController?.pushViewController(nextVc, animated: true)
    }
}
