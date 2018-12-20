//
//  HorizontaltabsDefaultInteractor.swift
//  HorizontaltabsDefault
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation
import UIKit

class TabsInteractor: PresentorToInterectorProtocol {
    var presenter: InterectorToPresenterProtocol?
    
    //Dummy Data
    var tabs = ["Menu TAB 1","Menu TAB 2","Menu TAB 3","Menu TAB 4","Menu TAB 5","Menu TAB 6", "Menu TAB 7", "Menu TAB 8", "Menu TAB 9", "Menu TAB 10"]

    func fetchData() {
        
        //1. Usually perform Network Req here or
        //2. Data can also come from other Manager/ Builder/ Class Models
        var tabVMs:[TabsViewModel] = []

        for tab in tabs {
            let tabVM = TabsViewModel.init(with: tab, identifier: tab, productCount: tab, hexColorCode: tab, isSelected: false, hexUrl: tab)
            tabVMs.append(tabVM)
        }
        
        if tabVMs.count > 0 {
            self.presenter?.dataFetched(tabs: tabVMs)
        }else{
            self.presenter?.dataFetchFailed()
        }
    }

}
