//
//  HorizontaltabsDefaultPresenter.swift
//  HorizontaltabsDefault
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation

class TabsPresenter: ViewToPresenterProtocol {
    var interector: PresentorToInterectorProtocol?
    var view: PresenterToViewProtocol?
    var router: PresenterToRouterProtocol?
 
    func updateView() {
        interector?.fetchData()
    }
}

extension TabsPresenter: InterectorToPresenterProtocol {
    func dataFetched(tabs: [TabsViewModel]) {
        view?.showData(tabs: tabs)
    }
    
    func dataFetchFailed() {
        view?.showError()
    }
}

