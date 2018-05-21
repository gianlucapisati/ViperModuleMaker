//
//  🤓Wireframe.swift
//  %appname%
//
//  Created by %name% on %date%.
//  Copyright © %copyright%. All rights reserved.
//

import UIKit

class 🤓Wireframe {
    
}

extension 🤓Wireframe: 🤓WireframeProtocol {
    func 🤓FromStoryboard() -> 🤓ViewController {
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "🤓Controller") as! 🤓ViewController
        
        let interactor = 🤓Interactor()
        let presenter = 🤓Presenter(viewController: vc, interactor: interactor, wireframe: self)
        vc.eventHandler = presenter
        vc.dataProvider = presenter
        
        return vc
    }
    
    var mainStoryboard: UIStoryboard {
        get {
            return UIStoryboard(name: <#Change me#>, bundle: Bundle.main)
        }
    }
}
