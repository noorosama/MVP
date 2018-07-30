//
//  MainRouter.swift
//  MVP
//
//  Created by Admin user on 7/30/18.
//  Copyright © 2018 Nour Abukhaled. All rights reserved.
//

import Foundation
import UIKit

protocol MainRoutable {
    
    func showSummary(items: [String])
}

class MainRouter: MainRoutable {
    
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        
        self.viewController = viewController
    }
    
    
    func showSummary(items: [String]) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SummaryViewController") as! SummaryViewController
        
        controller.configurator = SummaryConfigurator(items: items)
        
        viewController?.navigationController?.pushViewController(controller, animated: true)
      
    }
    
}





