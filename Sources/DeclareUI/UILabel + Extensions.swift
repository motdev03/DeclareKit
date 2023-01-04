//
//  UILabel + Extensions.swift
//  Toro
//
//  Created by Tom Manuel on 22/07/22.
//  Copyright © 2022 User. All rights reserved.
//

import Foundation

extension UILabel {
    convenience init(text: String? = nil, font: UIFont, textColor: UIColor?) {
        self.init()
        
        self.text = text
        self.font = font
        self.textColor = textColor?.color
    }
    
    convenience init(configKey: ConfigController, font: UIFont, textColor: UIColor?) {
        self.init()
        
        self.text = configManager.text(for: configKey)
        self.font = font
        self.textColor = textColor?.color
    }
    
    @discardableResult func style(_ font: UIFont, textColor: UIColor) -> Self {
        self.font = font
        self.textColor = textColor.color
        return self
    }
    
    @discardableResult func text(_ text: String?, color: UIColor? = nil) -> Self {
        self.text = text
        if let color = color {
            self.textColor = color.color
        }
        return self
    }
    
    @discardableResult func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    @discardableResult func numberOfLines(_ number: Int) -> Self {
        self.numberOfLines = number
        return self
    }
    
    @discardableResult func sizeToFit() -> Self {
        super.sizeToFit()
        return self
    }
}
