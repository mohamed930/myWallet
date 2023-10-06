//
//  transActionsHistoryViewController.swift
//  myWallet
//
//  Created by Mohamed Ali on 06/10/2023.
//

import UIKit
import FittedSheets

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let obj = arr[indexPath.row]
        
        let sheet = transActionDetailsController(nibName: "transActionDetailsController", bundle: nil)
        
        let options = SheetOptions(
            // The full height of the pull bar. The presented view controller will treat this area as a safearea inset on the top
            pullBarHeight: 24,
            
            // The corner radius of the shrunken presenting view controller
            presentingViewCornerRadius: 20,
            
            // Extends the background behind the pull bar or not
            shouldExtendBackground: true,
            
            // Attempts to use intrinsic heights on navigation controllers. This does not work well in combination with keyboards without your code handling it.
            setIntrinsicHeightOnNavigationControllers: true,
            
            // Pulls the view controller behind the safe area top, especially useful when embedding navigation controllers
            useFullScreenMode: true,
            
            // Shrinks the presenting view controller, similar to the native modal
            shrinkPresentingViewController: true,
            
            // Determines if using inline mode or not
            useInlineMode: false,
            
            // Adds a padding on the left and right of the sheet with this amount. Defaults to zero (no padding)
            horizontalPadding: 0,
            
            // Sets the maximum width allowed for the sheet. This defaults to nil and doesn't limit the width.
            maxWidth: nil
        )
        
        let sheetController = SheetViewController(controller: sheet,
                                                  sizes: [.fixed(411)],
                                                  options: options
        )
        
        
        sheetController.cornerCurve = .continuous
        sheetController.cornerRadius = 16
        sheetController.minimumSpaceAbovePullBar = 0
        
        self.present(sheetController, animated: false)
    }
}
