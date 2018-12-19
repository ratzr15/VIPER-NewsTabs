//
//  HorizontaltabsDefaultBuilder.swift
//  HorizontaltabsDefault
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation
import UIKit

class HorizontaltabsDefaultBuilder {

    func main() -> UIView {
        let view = HorizontaltabsDefaultViewController()
        let interactor = HorizontaltabsDefaultInteractor()
        let presenter = HorizontaltabsDefaultPresenter()
        let router = HorizontaltabsDefaultRouter()

        view.presenter = presenter

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        router.presenter = presenter
        router.view = view

        return router.view ?? view
    }
}
