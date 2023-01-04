//
//  ImageRepresentable.swift
//  
//
//  Created by Tom Chakkalackal on 04/01/23.
//

import UIKit

protocol ImageRepresentable {
    var image: UIImage { get }
}

extension UIImage: ImageRepresentable {
    var image: UIImage { self }
}
