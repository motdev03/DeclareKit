//
//  UIButton+Extension.swift
//  Toro
//
//  Created by Tom Manuel on 25/05/22.
//  Copyright © 2022 User. All rights reserved.
//

import UIKit

extension UIButton {
    @discardableResult
    func titleStyle(font: UIFont, textColor: UIColor, state: UIControl.State = .normal) -> Self {
        self.titleLabel?.font = font
        self.setTitleColor(textColor, for: state)
        return self
    }
    
    @discardableResult
    func title(_ title: String?, state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: .normal)
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, tintColor: UIColor? = nil, for state: UIControl.State) -> Self {
        if let tintColor = tintColor {
            self.setImage(image?.withRenderingMode(.alwaysTemplate), for: .normal)
            self.tintColor = tintColor
        } else {
            self.setImage(image, for: state)
        }
        
        return self
    }

    @discardableResult
    func attributedTitle(_ title: NSAttributedString) -> Self {
        self.setAttributedTitle(title, for: .normal)
        return self
    }
}
