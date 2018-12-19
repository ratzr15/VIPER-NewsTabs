//
//  HorizontaltabsDefaultPresenter.swift
//  HorizontaltabsDefault
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation

class HorizontaltabsDefaultPresenter: HorizontaltabsPresenter {

    var router: HorizontaltabsRouter?
    var interactor: HorizontaltabsInteractor?
    weak var view: HorizontaltabsViewController?
    
    
    func didSelect(index: Int) {
        self.router?.menuBarDidSelectItemAt(index: index)
    }

}
