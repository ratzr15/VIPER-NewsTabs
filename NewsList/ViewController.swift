//
//  ViewController.swift
//  NewsList
//
//  Created by Rathish Kannan on 11/12/18.
//  Copyright © 2018 Rathish Kannan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabView: HorizontalTabsView!
    var presenter: ViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        customiseView()
        presenter?.updateView()
    }
    
    private func customiseView(){
        tabView.isSizeToFitCellsNeeded = true
        tabView.delegate = self
        tabView.collView.backgroundColor = UIColor.init(white: 0.97, alpha: 0.97)
    }
}

extension ViewController: PresenterToViewProtocol {
    func showData(tabs: [TabsViewModel]) {
        tabView.dataArray = tabs.formatted
        //Perfrom intial selection (Pass -1 if no selection req)
        tabView.collView.selectItem(at: IndexPath.init(item: 0, section: 0), animated: true, scrollPosition: .centeredVertically)
    }
    
    func showError() {
        
    }
}


extension ViewController: TabDelegate {
    func tabSelected(menu: HorizontalTabsView, index: Int) {
        tabView.collView.scrollToItem(at: IndexPath.init(item: index, section: 0), at: .centeredHorizontally, animated: true)
    }

}
