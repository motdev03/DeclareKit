//
//  UIControl + Extension.swift
//  Toro
//
//  Created by Tom Manuel on 31/07/22.
//  Copyright © 2022 User. All rights reserved.
//

import UIKit

extension UIControl {
    
    @discardableResult
    func valueChanged(target: Any?, selector: Selector) -> Self {
        self.addTarget(target, action: selector, for: .valueChanged)
        return self
    }
    
    @discardableResult
    func touchUpInside(target: Any?, selector: Selector) -> Self {
        addTarget(target, action: selector, for: .touchUpInside)
        return self
    }
}
