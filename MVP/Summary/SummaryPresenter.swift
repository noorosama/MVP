//
//  SummaryPresenter.swift
//  MVP
//
//  Created by Admin user on 7/30/18.
//  Copyright © 2018 Nour Abukhaled. All rights reserved.
//

import Foundation

protocol SummaryPresenterInput {
    
    func viewDidLoad()
    func configure(cell: SummaryCellPresentable, at indexPath: IndexPath)
    func numberOfRows() -> Int
    func backButtonTapped()
}

protocol SummaryPresenterOutput: class {
    
    func displayScreenTitle(title: String)
    func displayTitleLabel(title: String)
}

class SummaryPresenter: SummaryPresenterInput {
   
    
    weak var output: SummaryPresenterOutput?
    let items: [String]
    var router: summaryRoutable?
    
    init(output: SummaryPresenterOutput, items: [String],router: summaryRoutable) {
        
        self.output = output
        self.items = items
        self.router = router
    }
    
    func numberOfRows() -> Int {
        
        return items.count
    }
    
    func viewDidLoad() {
        
        output?.displayScreenTitle(title: "Summary")
        output?.displayTitleLabel(title: "Back")
    }
    
    func configure(cell: SummaryCellPresentable, at indexPath: IndexPath) {
        
        let item = items[indexPath.row]
        cell.displayLabel(text: item)
    }
    
    func backButtonTapped() {
        
      router?.backToLogin()
        
    }
    
}




