//
//  WireFrame.swift
//  ViperDemo
//
//  Created by Urvish Patel on 09/01/17.
//  Copyright © 2017 AgileInfoWays Pvt.Ltd. All rights reserved.
//

import UIKit

protocol ArticlesWireframeInput
{
   func pushToXyzController() -> Void
}


class WireFrame: ArticlesWireframeInput
{
    var view:ViewController?
    
    func pushToXyzController()
    {
       // view?.navigationController ?.pushViewController(, animated: true)
    }
}
