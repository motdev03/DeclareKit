//
//  UIImageView+Extension.swift
//  Toro
//
//  Created by Tom Manuel on 10/05/21.
//  Copyright © 2021 User. All rights reserved.
//

import UIKit

extension UIImageView {
    
    @discardableResult
    func contentMode(_ mode: ContentMode) -> Self {
        self.contentMode = mode
        return self
    }
    
    @discardableResult
    func image(_ image: ImageRepresentable?, tintColor: ColorRepresentable? = nil) -> Self {
        if let tintColor = tintColor {
            self.image = image?.image.withRenderingMode(.alwaysTemplate)
            self.tintColor(tintColor.color)
            return self
        }
        self.image = image?.image
        return self
    }
}
