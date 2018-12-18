//
//  HorizontaltabsRouter.swift
//  Horizontaltabs
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation

protocol HorizontaltabsRouter {

    var presenter: HorizontaltabsPresenter? { get set }
        
    func menuBarDidSelectItemAt(index: Int)


}
