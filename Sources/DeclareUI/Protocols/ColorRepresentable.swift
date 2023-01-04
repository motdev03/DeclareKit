//
//  ColorRepresentable.swift
//  
//
//  Created by Tom Chakkalackal on 04/01/23.
//

import UIKit

protocol ColorRepresentable {
    var color: UIColor { get }
}

extension UIColor: ColorRepresentable {
    var color: UIColor { self }
}
