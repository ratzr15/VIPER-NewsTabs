//
//  HorizontaltabsPresenter.swift
//  Horizontaltabs
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation

protocol HorizontaltabsPresenter: class {

    var router: HorizontaltabsRouter? { get set }
    var interactor: HorizontaltabsInteractor? { get set }
    var view: HorizontaltabsViewController? { get set }
}
