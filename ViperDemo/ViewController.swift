//
//  ViewController.swift
//  ViperDemo
//
//  Created by Malav Soni on 06/01/17.
//  Copyright © 2017 AgileInfoWays Pvt.Ltd. All rights reserved.
//

import UIKit

protocol ArticlesViewInterface: class {
    func getTextFromPresentor(With str:String) -> Void
}

class ViewController: UIViewController,ArticlesViewInterface {
    
    // MARK: Constants
    let navigationBarTitle = "NAVIGATION_BAR_TITLE"
    let buttonSortTitle = "BUTTON_SORT_TITLE"
    
    // MARK: Outlets
    @IBOutlet var txtName:UITextField!
    @IBOutlet var lblName:UILabel!
    
    // MARK: Instance Variables
    var presentor:ArticlesModuleInterface?
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let createdPresentor = Presentor()
        let intractor = Intractor()
        let wireFrame = WireFrame()
        
        intractor.output = createdPresentor
        
        createdPresentor.view = self
        createdPresentor.interactor = intractor
        createdPresentor.wireframe = wireFrame
        
        self.presentor = createdPresentor 
        wireFrame.view = self
    }
    
    @IBAction func buttonClick()->Void {
        self.presentor?.updateViewWithMessage(with: txtName.text!);
    }
    
    // MARK: ArticlesViewInterface
    func getTextFromPresentor(With str: String) {
        lblName.text = str;
    }
}
