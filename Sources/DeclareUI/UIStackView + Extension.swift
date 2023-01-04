//
//  UIStackView + Extension.swift
//  Toro
//
//  Created by Tom Manuel on 28/07/22.
//  Copyright © 2022 User. All rights reserved.
//

import Foundation
import UIKit

extension UIStackView {
    @discardableResult func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    @discardableResult func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    @discardableResult func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    @discardableResult func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
    
    @discardableResult func customSpacing(_ spacing: CGFloat, after index: Int) -> Self {
        setCustomSpacing(spacing, after: arrangedSubviews[index])
        return self
    }
    
    @discardableResult func layoutMargins(_ margins: UIEdgeInsets) -> Self {
        self.layoutMargins = margins
        isLayoutMarginsRelativeArrangement = true
        return self
    }
}
