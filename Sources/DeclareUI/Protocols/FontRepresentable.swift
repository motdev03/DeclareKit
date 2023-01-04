//
//  FontRepresentable.swift
//  
//
//  Created by Tom Chakkalackal on 04/01/23.
//

import UIKit

protocol FontRepresentable {
    var font: UIFont { get }
}

extension UIFont: FontRepresentable {
    var font: UIFont { self }
}
