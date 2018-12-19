//
//  ViewController.swift
//  NewsList
//
//  Created by Rathish Kannan on 11/12/18.
//  Copyright © 2018 Rathish Kannan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuBarView: HorizontalTabsView!

    var currentIndex: Int = 0
    var tabs = ["Menu TAB 1","Menu TAB 2","Menu TAB 3","Menu TAB 4","Menu TAB 5","Menu TAB 6", "Menu TAB 7", "Menu TAB 8", "Menu TAB 9", "Menu TAB 10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpTabs()
    }

    private func setUpTabs(){
        menuBarView.dataArray = tabs
        menuBarView.isSizeToFitCellsNeeded = true
        menuBarView.collView.backgroundColor = UIColor.init(white: 0.97, alpha: 0.97)
        menuBarView.collView.selectItem(at: IndexPath.init(item: 0, section: 0), animated: true, scrollPosition: .centeredVertically)
    }
    

}

