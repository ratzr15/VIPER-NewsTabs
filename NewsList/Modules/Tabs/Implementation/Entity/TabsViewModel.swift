//
//  OptionViewModel.swift
//  SSSApp
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation

class TabsViewModel:Equatable {
    var name:String = ""
    var identifier:String = ""
    var productCount:String? = nil
    var hexColorCode:String? = nil
    var isSelected:Bool = false
    var hexUrl:String?
    var children:[TabsViewModel] = []


    init(withIdentifier identifier:String) {
        self.identifier = identifier
    }

    init(with name:String, identifier: String, productCount:String?, hexColorCode:String?, isSelected:Bool, hexUrl:String?, children: [TabsViewModel] = []) {
        self.name         = name
        self.identifier   = identifier
        self.productCount = productCount
        self.hexColorCode = hexColorCode
        self.isSelected   = isSelected
        self.hexUrl       = hexUrl
        self.children     = children

    }
}

extension TabsViewModel {
    static func == (lhs: TabsViewModel, rhs: TabsViewModel) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}

extension Array where Element: TabsViewModel {
    
    var commaSeparatedFormat: String {
        return self.compactMap({$0.name}).joined(separator: ", ")
    }
    
    var selected:[TabsViewModel] {
        return self.filter( {$0.isSelected})
    }
    
    func clone() -> [TabsViewModel] {
        
        var copiedArray = Array<TabsViewModel>()
        
        for element in self {
            let copiedElement = TabsViewModel.init(with: element.name, identifier: element.identifier, productCount: element.productCount, hexColorCode: element.hexColorCode, isSelected: element.isSelected, hexUrl: element.hexUrl)
            copiedArray.append(copiedElement)
        }
        
        return copiedArray
    }
    
    var formatted: [String] {
        return self.compactMap({$0.name})
    }
    
}

