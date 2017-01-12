//
//  Presentor.swift
//  ViperDemo
//
//  Created by Urvish Patel on 09/01/17.
//  Copyright © 2017 AgileInfoWays Pvt.Ltd. All rights reserved.
//

import UIKit

protocol ArticlesModuleInterface: class
{
    func updateViewWithMessage(with str:String)->Void
    
}

class Presentor: ArticlesModuleInterface,ArticlesInteractorOutput {

    // MARK: Instance Variables
    
    weak var view: ArticlesViewInterface!
    
    var interactor: ArticlesInteractorInput!
    
    var wireframe: ArticlesWireframeInput!
    
    func getText(With str:String) -> Void
    {
        self.view.getTextFromPresentor(With: str);
    }
    func updateViewWithMessage(with str: String) {
        self.interactor.setTextFromPresentor(with: str);
        //self.wireframe.pushToXyzController()
    }
}
