//
//  ViewController.swift
//  NewsList
//
//  Created by Rathish Kannan on 11/12/18.
//  Copyright © 2018 Rathish Kannan. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialTabs

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpTabBar()
    }

    //TODO: Customize tabs from MaterialI/O - https://material.io/develop/ios/components/tabs/
    private func setUpTabBar(){
        let tabBar = MDCTabBar(frame: view.bounds)
        tabBar.items = [
            UITabBarItem(title: "Recents", image: nil, tag: 0),
            UITabBarItem(title: "Favorites", image:nil, tag: 0),
        ]
        tabBar.itemAppearance = .titledImages
        tabBar.setTitleColor(UIColor.black, for: .normal)
        tabBar.setTitleColor(UIColor.black, for: .selected)


        
        tabBar.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        tabBar.sizeToFit()
        view.addSubview(tabBar)
    }

}

