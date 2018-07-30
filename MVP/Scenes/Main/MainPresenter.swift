//
//  MainPresenter.swift
//  MVP
//
//  Created by Nour Abukhaled on 7/30/18.
//  Copyright © 2018 Nour Abukhaled. All rights reserved.
//

import Foundation

protocol MainPresenterInput {
    
    func viewDidLoad()
    func loginButtonTapped()
}

protocol MainPresenterOutput: class {
    
    func displayTitleLabel(text: String)
    func displayLoginButton(title: String)
    
}

class MainPresenter: MainPresenterInput {
    
    
   weak var output: MainPresenterOutput?
        var router: MainRoutable?
    
    init(output: MainPresenterOutput, router: MainRoutable ) {
        
        self.output = output
        self.router = router
    }
    
    func viewDidLoad() {
        
        output?.displayTitleLabel(text: "Welcome")
        output?.displayLoginButton(title: "Login")
    }
    
    func loginButtonTapped() {
        
        router?.showSummary(items: ["Noor","Anas","Reem","Mohammad"])
    }
   
    
}
