//
//  MainConfigurator.swift
//  MVP
//
//  Created by Admin user on 7/30/18.
//  Copyright © 2018 Nour Abukhaled. All rights reserved.
//

import Foundation

protocol MainConfigurable {
    
    func configure(mainViewController: MainViewController)
}

class MainConfigurator: MainConfigurable {
    
    func configure(mainViewController: MainViewController) {
        
        let router = MainRouter(viewController: mainViewController)
        
        let presenter = MainPresenter(output: mainViewController, router: router)
        
        mainViewController.presenter = presenter
    }
    
    
}
