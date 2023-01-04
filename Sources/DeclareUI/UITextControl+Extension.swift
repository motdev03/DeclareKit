//
//  UITextfield+Extension.swift
//  Toro
//
//  Created by user on 13/03/19.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation

//MARK: textfield
extension UITextField  {
    
     @discardableResult func placeholder(text: String? = nil, font: UIFont, color: UIColor) -> Self {
        self.tintColor = color.color
        self.attributedPlaceholder = NSAttributedString(string: text ?? "", attributes: [.font: font, .foregroundColor: color.color])
        return self
    }
    
    @discardableResult func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult func leftPadding(_ padding: CGFloat) -> Self {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: frame.height))
        leftView = paddingView
        leftViewMode = .always
        return self
    }
    
    @discardableResult func textStyle(_ color: UIColor, font: UIFont) -> Self {
        self.textColor = color.color
        self.font = font
        return self
    }
    
    @discardableResult func delegate(_ delegate: UITextFieldDelegate) -> Self {
        self.delegate = delegate
        return self
    }
}
