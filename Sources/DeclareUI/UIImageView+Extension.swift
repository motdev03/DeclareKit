//
//  UIImageView+Extension.swift
//  Toro
//
//  Created by Tom Manuel on 10/05/21.
//  Copyright © 2021 User. All rights reserved.
//

import UIKit

extension UIImageView {
    
    convenience init(UIImage: UIImage?, tintColor: UIColor? = nil) {
        if let tintColor = tintColor {
            self.init(image: image?.withRenderingMode(.alwaysTemplate))
            self.tintColor(tintColor)
            return
        }
        self.init(image: image)
    }
    
    @discardableResult func contentMode(_ mode: ContentMode) -> Self {
        self.contentMode = mode
        return self
    }
    
    @discardableResult func image(_ image: UIImage?, tintColor: UIColor? = nil) -> Self {
        if let tintColor = tintColor {
            self.image = image?.withRenderingMode(.alwaysTemplate)
            self.tintColor(tintColor)
            return self
        }
        self.image = image
        return self
    }
}
