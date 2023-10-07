//
//  ViewController.swift
//  myWallet
//
//  Created by Mohamed Ali on 06/10/2023.
//

import UIKit

class WalletViewController: UIViewController {
    
    @IBOutlet weak var walletInfoView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "favouriteCell"
    var arr = Array<persionModel>()
    
    let tableViewCellIdentifer = "transActionCell"
    var transactions = Array<transActionModel>()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
        configureCollectionView()
        loadLastTransAciton()
        
        configureTableView()
        loadLatestTransActions()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    func configureUI() {
        walletInfoView.setGradientBackground(colorOne: myAssets.Color.topColor.color, ColorTwo: myAssets.Color.buttonColor.color)
    }
    
    // MARK: - CollectionView.
    // -------------------------------------------
    func configureCollectionView() {
        collectionView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
    }
    
    func loadLastTransAciton() {
        arr = [
                persionModel(imageName: myAssets.Assets.add.name, title: "Add"),
                persionModel(imageName: myAssets.Assets.profilePhoto.name, title: "Ali"),
                persionModel(imageName: myAssets.Assets.profilePhoto2.name, title: "Steve"),
                persionModel(imageName: myAssets.Assets.profilePhoto3.name, title: "Ahmed"),
                persionModel(imageName: myAssets.Assets.profilePhoto4.name, title: "Mark")
              ]
    }
    // -------------------------------------------
    
    
    // MARK: - tableView
    // -------------------------------------------
    
    func configureTableView() {
        tableView.register(UINib(nibName: tableViewCellIdentifer, bundle: nil), forCellReuseIdentifier: tableViewCellIdentifer)
        
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))
    }
    
    func loadLatestTransActions() {
        transactions = [
                            transActionModel(title: "Walmart", image: myAssets.Assets.topup1.name, amount: 35.23, type: false, date: "12:32"),
                            transActionModel(title: "Top up", image: myAssets.Assets.topup1.name, amount: 430.00, type: true, date: "02:12"),
                            transActionModel(title: "Netflix", image: myAssets.Assets.topup1.name, amount: 13.00, type: false, date: "13:53")
                       ]
    }
    
    // -------------------------------------------

}

extension WalletViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: favouriteCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! favouriteCell
        
        cell.configureCell(arr[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 64.0, height: 90.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }
}


extension WalletViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: transActionCell = tableView.dequeueReusableCell(withIdentifier: tableViewCellIdentifer, for: indexPath) as! transActionCell
        
        cell.configureUI(transactions[indexPath.row])
        
        // Create a separator view
        let separatorView = UIView(frame: CGRect(x: 0, y: cell.bounds.size.height - 1, width: cell.bounds.size.width, height: 1))
        separatorView.backgroundColor = myAssets.Color.aliceBlue.color

        // Add the separator view as a subview to all cells except the last one
        if indexPath.row < tableView.numberOfRows(inSection: indexPath.section) - 1 {
            cell.addSubview(separatorView)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sheet = sheet()
        sheet.openSheet(ob: self)
    }
}
