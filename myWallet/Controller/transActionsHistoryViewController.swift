//
//  transActionsHistoryViewController.swift
//  myWallet
//
//  Created by Mohamed Ali on 06/10/2023.
//

import UIKit

class transActionsHistoryViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "transActionCell"
    var arr = Array<transActionModel>()
    var sections = ["today","yesterday","later"]

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        regesterTableView()
        loadData()
    }
    
    
    func configureUI() {
        searchTextField.addPadding(amount: 40, PlaceHolder: myStrings.searchPlaceHolder, Color: myAssets.Color.silverSand.color)
    }
    
    func regesterTableView() {
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    func loadData() {
        arr = [
                    transActionModel(title: "Walmart", image: myAssets.Assets.topup1.name, amount: 35.23, type: false, date: "12:32"),
                    transActionModel(title: "Top up", image: myAssets.Assets.topup1.name, amount: 430.00, type: true, date: "02:12"),
                    transActionModel(title: "Netflix", image: myAssets.Assets.topup1.name, amount: 13.00, type: false, date: "13:53")
               ]
    }
}

extension transActionsHistoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: transActionCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! transActionCell
        
        cell.configureUI(arr[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == numberOfSections(in: tableView) - 1 {
            // Create a custom footer view
            let customFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 4))
            
            // Add a line as a subview with the desired line width
            let lineView = UIView(frame: CGRect(x: 0, y: 0, width: 4, height: 4))
            lineView.backgroundColor = .black // Customize the line color
            customFooterView.addSubview(lineView)
            
            return customFooterView
        }
        return nil
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == numberOfSections(in: tableView) - 1 {
            // Return the desired height for the custom footer view
            return 4
        }
        return 0
    }
}
