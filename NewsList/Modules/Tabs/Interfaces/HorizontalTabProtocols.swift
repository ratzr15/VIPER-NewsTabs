//
//  HorizontaltabsInteractor.swift
//  Horizontaltabs
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation

protocol HorizontaltabsInteractor {
    var presenter: HorizontaltabsPresenter? { get set }
}

protocol HorizontaltabsPresenter: class {
    var router: HorizontaltabsRouter? { get set }
    var interactor: HorizontaltabsInteractor? { get set }
    var view: HorizontaltabsViewController? { get set }
    func didSelect(index: Int)
}

protocol HorizontaltabsRouter {
    var presenter: HorizontaltabsPresenter? { get set }
    func menuBarDidSelectItemAt(index: Int)
}

protocol HorizontaltabsViewController: class {
    var presenter: HorizontaltabsPresenter? { get set }
}
