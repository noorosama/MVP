//
//  SummaryConfigurator.swift
//  MVP
//
//  Created by Admin user on 7/30/18.
//  Copyright © 2018 Nour Abukhaled. All rights reserved.
//

import Foundation

protocol SummaryConfigurable {
    
    func configure(summaryViewController: SummaryViewController)
}

class SummaryConfigurator: SummaryConfigurable {
    
    let items: [String]
    
    init(items: [String]) {
        
        self.items = items
    }
    
    func configure(summaryViewController: SummaryViewController) {
        
        let router = summaryRouter(viewController: summaryViewController)
        
        let presenter = SummaryPresenter(output: summaryViewController, items: items, router: router)
        
        summaryViewController.presenter = presenter
        
    }
    
}


