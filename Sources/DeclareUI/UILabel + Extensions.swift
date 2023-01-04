//
//  UILabel + Extensions.swift
//  Toro
//
//  Created by Tom Manuel on 22/07/22.
//  Copyright © 2022 User. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(text: String? = nil, font: FontRepresentable, textColor: ColorRepresentable?) {
        self.init()
        
        self.text = text
        self.font = font.font
        self.textColor = textColor?.color
    }
    
    @discardableResult
    func style(_ font: FontRepresentable, textColor: ColorRepresentable) -> Self {
        self.font = font.font
        self.textColor = textColor.color
        return self
    }
    
    @discardableResult
    func text(_ text: String?, color: ColorRepresentable? = nil) -> Self {
        self.text = text
        if let color = color?.color {
            self.textColor = color.color
        }
        return self
    }
    
    @discardableResult
    func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    @discardableResult
    func numberOfLines(_ number: Int) -> Self {
        self.numberOfLines = number
        return self
    }
    
    @discardableResult
    func sizeToFit() -> Self {
        super.sizeToFit()
        return self
    }
}
