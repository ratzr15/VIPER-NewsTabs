//
//  HorizontaltabsInteractor.swift
//  Horizontaltabs
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation
import UIKit

protocol ViewToPresenterProtocol: class {
    var  view: PresenterToViewProtocol? {get set};
    var  interector: PresentorToInterectorProtocol? {get set};
    var  router: PresenterToRouterProtocol? {get set}
    func updateView();
}

protocol PresenterToRouterProtocol {
    static func createModule() -> UIViewController;
}

protocol InterectorToPresenterProtocol: class {
    func dataFetched(tabs: [TabsViewModel]);
    func dataFetchFailed();
}

protocol PresentorToInterectorProtocol {
    var presenter: InterectorToPresenterProtocol? {get set} ;
    func fetchData();
}

//VM
protocol FilterCellDisplayable: class {
    var name:String? {get set}
    var value:String? {get set}
}

protocol PresenterToViewProtocol: class {
    func showData(tabs: [TabsViewModel]);
    func showError();
}
