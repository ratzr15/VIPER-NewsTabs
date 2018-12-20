//
//  HorizontaltabsDefaultRouter.swift
//  HorizontaltabsDefault
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation
import UIKit

class TabsRouter: PresenterToRouterProtocol {
    class func createModule() ->UIViewController{
        let view = mainstoryboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController;
        let presenter: ViewToPresenterProtocol & InterectorToPresenterProtocol = TabsPresenter();
        var interactor: PresentorToInterectorProtocol = TabsInteractor();
        let router: PresenterToRouterProtocol = TabsRouter();
        
        view?.presenter = presenter;
        presenter.view = view;
        presenter.router = router;
        presenter.interector = interactor;
        interactor.presenter = presenter
        
        return view!;
    }
    
    static var mainstoryboard: UIStoryboard{
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }

}
