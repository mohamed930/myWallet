//
//  allBillsViewController.swift
//  myWallet
//
//  Created by Mohamed Ali on 07/10/2023.
//

import UIKit

class allBillsViewController: UIViewController {
    
    @IBOutlet weak var searchTextField:UITextField!
    @IBOutlet weak var tableView:UITableView!
    
    let cellIdentifer = "billCell"
    var billsArr = Array<transActionModel>()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        configureTableView()
        fetchBillsOperation()
    }
    
    func configureUI() {
        searchTextField.addPadding(amount: 40.0, PlaceHolder: myStrings.billerPlaceHolder, Color: myAssets.Color.silverSand.color)
    }
    
    func configureTableView() {
        tableView.register(UINib(nibName: cellIdentifer, bundle: nil), forCellReuseIdentifier: cellIdentifer)
        tableView.rowHeight = 64.0
    }
    
    func fetchBillsOperation() {
        billsArr = [
            transActionModel(title: "Electricity", image: myAssets.Assets.electricty.name, amount: 132.32, type: true, date: "2023-10-07"),
            transActionModel(title: "Water", image: myAssets.Assets.water.name, amount: 30.32, type: true, date: "2023-10-07"),
            transActionModel(title: "Phone", image: myAssets.Assets.phone.name, amount: 10.5, type: true, date: "2023-10-07")
                   ]
    }

}

extension allBillsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return billsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: billCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifer, for: indexPath) as! billCell
        
        cell.configureUI(billsArr[indexPath.row])
        
        return cell
    }
}
