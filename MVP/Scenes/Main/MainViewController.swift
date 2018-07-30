//
//  ViewController.swift
//  MVP
//
//  Created by Nour Abukhaled on 7/30/18.
//  Copyright © 2018 Nour Abukhaled. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    //    MARK: Outlet
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var loginButton: UIButton!

    //    MARK: Variables
    var presenter: MainPresenterInput?
    var configurator: MainConfigurable?
    
    //    MARK: View LifeCycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        configurator = MainConfigurator()
        configurator?.configure(mainViewController: self)
        
        presenter?.viewDidLoad()
        
    }

}

//MARK: - Actions

private extension MainViewController {
   
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        presenter?.loginButtonTapped()
    }
    
}


//MARK: MainPresenterOutput

extension MainViewController: MainPresenterOutput {
    
    func displayTitleLabel(text: String) {
        
        titleLabel.text = text
        
    }
    
    func displayLoginButton(title: String) {
        
        loginButton.setTitle(title, for: .normal)
    }
    
    
}
