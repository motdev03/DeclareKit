//
//  UICollectionView+Extensions.swift
//  
//
//  Created by Tom Chakkalackal on 04/01/23.
//

import UIKit

extension UICollectionView {
    @discardableResult
    func registerCell(_ cell: UICollectionViewCell.Type) -> Self {
        self.register(cell, forCellWithReuseIdentifier: String(describing: cell))
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UICollectionViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    func datasource(_ datasource: UICollectionViewDataSource) -> Self {
        self.dataSource = datasource
        return self
    }
}
