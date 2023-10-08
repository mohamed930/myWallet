//
//  sheet.swift
//  myWallet
//
//  Created by Mohamed Ali on 07/10/2023.
//

import Foundation
import FittedSheets

class sheet {
    private var data: transActionModel?
    private var reportFlag: Bool
    private var sheetSize: CGFloat
    
    init(data: transActionModel? = nil,reportFlag: Bool,sheetSize: CGFloat = 411) {
        self.data = data
        self.reportFlag = reportFlag
        self.sheetSize = sheetSize
    }
    
    func openSheet(ob: UIViewController) {
        let sheet = transActionDetailsController(nibName: "transActionDetailsController", bundle: nil)
        
        sheet.flag = reportFlag
        
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
                                                  sizes: [.fixed(sheetSize),],
                                                  options: options
        )
        
        
        sheetController.cornerCurve = .continuous
        sheetController.cornerRadius = 16
        sheetController.minimumSpaceAbovePullBar = 0
        
        ob.present(sheetController, animated: false)
    }
    
    func openSheet(ob: UIViewController & payProtocol) {
        let sheet = transActionDetailsController(nibName: "transActionDetailsController", bundle: nil)
        
        sheet.flag = reportFlag
        sheet.delegate = ob
        
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
                                                  sizes: [.fixed(sheetSize),],
                                                  options: options
        )
        
        
        sheetController.cornerCurve = .continuous
        sheetController.cornerRadius = 16
        sheetController.minimumSpaceAbovePullBar = 0
        
        ob.present(sheetController, animated: false)
    }
}
