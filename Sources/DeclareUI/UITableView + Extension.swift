//
//  UITableView + Extension.swift
//  Toro
//
//  Created by Tom Manuel on 31/07/22.
//  Copyright © 2022 User. All rights reserved.
//

import UIKit

extension UITableView {
    
    @discardableResult
    func registerCell(_ cell: UITableViewCell.Type) -> Self {
        self.register(cell, forCellReuseIdentifier: String(describing: cell))
        return self
    }
    
    @discardableResult
    func registerHeaderFooter(_ cell: UITableViewHeaderFooterView.Type) -> Self {
        self.register(cell, forHeaderFooterViewReuseIdentifier: String(describing: cell))
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UITableViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    func datasource(_ datasource: UITableViewDataSource) -> Self {
        self.dataSource = datasource
        return self
    }
    
    @discardableResult
    func preFetchDatasource(_ datasource: UITableViewDataSourcePrefetching) -> Self {
        self.prefetchDataSource = datasource
        return self
    }
    
    @discardableResult
    func separatorStyle(_ style: UITableViewCell.SeparatorStyle, inset: UIEdgeInsets? = nil) -> Self {
        self.separatorStyle = style
        if let inset = inset {
            self.separatorInset = inset
        }
        return self
    }
    
    @discardableResult
    func refreshControl(_ target: Any, selector: Selector) -> Self {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(target, action: selector, for: .valueChanged)
        self.refreshControl = refreshControl
        return self
    }
}
