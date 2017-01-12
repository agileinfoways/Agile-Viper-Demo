//
//  Intractor.swift
//  ViperDemo
//
//  Created by Urvish Patel on 09/01/17.
//  Copyright © 2017 AgileInfoWays Pvt.Ltd. All rights reserved.
//

import UIKit

protocol ArticlesInteractorInput: class
{
    func fetchText()
    func setTextFromPresentor(with str:String) -> Void
    
}

protocol ArticlesInteractorOutput: class
{
     func getText(With str:String) -> Void
}

class Intractor: ArticlesInteractorInput {

    // MARK: Instance Variables
    
    weak var output: ArticlesInteractorOutput!
    
    func fetchText()
    {
       
    }
    func setTextFromPresentor(with str: String) {
        print(str);
        self.output.getText(With: str)
    }
}
