//
//  HorizontaltabsDefaultViewController.swift
//  HorizontaltabsDefault
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import Foundation
import UIKit

class HorizontaltabsDefaultViewController: UIView, HorizontaltabsViewController {

    var presenter: HorizontaltabsPresenter?

    lazy var collView: UICollectionView = {
        let layOut = UICollectionViewFlowLayout()
        let cv = UICollectionView.init(frame: CGRect.zero, collectionViewLayout: layOut)
        cv.showsHorizontalScrollIndicator = false
        layOut.scrollDirection = .horizontal
        cv.backgroundColor = .white
        cv.delegate = self
        cv.dataSource = self
        return cv
    }()
    
    var dataArray: [String] = [] {
        didSet{
            self.collView.reloadData()
        }
    }
    
    var isSizeToFitCellsNeeded: Bool = false {
        didSet{
            self.collView.reloadData()
        }
    }
}

extension HorizontaltabsDefaultViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.presenter?.didSelect(index: indexPath.item)
    }
}

extension HorizontaltabsDefaultViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if isSizeToFitCellsNeeded {
            let sizeee = CGSize.init(width: 500, height: self.frame.height)
            let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
            let str = dataArray[indexPath.item]
            let estimatedRect = NSString.init(string: str).boundingRect(with: sizeee, options: options, attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 23)], context: nil)
            
            return CGSize.init(width: estimatedRect.size.width, height: self.frame.height)
        }
        
        return CGSize.init(width: (self.frame.width - 10)/CGFloat(dataArray.count), height: self.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
}
