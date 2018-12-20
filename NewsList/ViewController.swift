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
    var presenter: ViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        customiseView()
        presenter?.updateView()
    }
    
    private func customiseView(){
        menuBarView.isSizeToFitCellsNeeded = true
        menuBarView.collView.backgroundColor = UIColor.init(white: 0.97, alpha: 0.97)
    }
}

extension ViewController: PresenterToViewProtocol {
    func showData(tabs: [TabsViewModel]) {
        menuBarView.dataArray = tabs.formatted
        //Perfrom intial selection (Pass -1 if no selection req)
        menuBarView.collView.selectItem(at: IndexPath.init(item: 0, section: 0), animated: true, scrollPosition: .centeredVertically)
    }
    
    func showError() {
        
    }
}
