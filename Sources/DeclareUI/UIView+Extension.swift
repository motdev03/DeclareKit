//
//  UIView+Extension.swift
//  Toro
//
//  Created by user on 27/02/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

extension UIView {
    
    @discardableResult func backgroundColor(_ color: UIColor) -> Self {
        self.backgroundColor = color.color
        return self
    }
    
    @discardableResult func radius(_ value: CGFloat) -> Self {
        self.layer.cornerRadius = value
        return self
    }
    
    @discardableResult func border(_ color: UIColor, width: CGFloat) -> Self {
        self.layer.borderWidth = width
        self.layer.borderColor = color.color.cgColor
        return self
    }
    
    @discardableResult func height(_ height: CGFloat) -> Self {
        self.snp.makeConstraints({ $0.height.equalTo(height) })
        return self
    }
    
    @discardableResult func width(_ width: CGFloat) -> Self {
        self.snp.makeConstraints({ $0.width.equalTo(width) })
        return self
    }
    
    @discardableResult func pinToSuperView(horizontalOffset: CGFloat = 0, verticalOffset: CGFloat = 0) -> Self {
        self.snp.makeConstraints({
            $0.leading.equalToSuperview().offset(horizontalOffset)
            $0.trailing.equalToSuperview().inset(horizontalOffset)
            $0.top.equalToSuperview().offset(verticalOffset)
            $0.bottom.equalToSuperview().inset(verticalOffset)
        })
        return self
    }
    
    @discardableResult func pinToSuperView(top: CGFloat, bottom: CGFloat, leading: CGFloat, trailing: CGFloat) -> Self {
        self.snp.makeConstraints({
            $0.leading.equalToSuperview().offset(leading)
            $0.trailing.equalToSuperview().inset(trailing)
            $0.top.equalToSuperview().offset(top)
            $0.bottom.equalToSuperview().inset(bottom)
        })
        return self
    }
    
    @discardableResult func embedScrollView(contentView: UIView) -> Self {
        let scrollView = UIScrollView()
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        scrollView.pinToSuperView()
        contentView.pinToSuperView()
        contentView.snp.makeConstraints({
            $0.width.equalTo(self.snp.width)
        })
        
        return self
    }
    
    @discardableResult func makeRounded(_ side: CGFloat) -> Self {
        self.height(side).width(side).radius(side / 2)
        self.clipsToBounds = true
        return self
    }
    
    @discardableResult func round(corners: CACornerMask, radius: CGFloat) -> Self {
        layer.cornerRadius = radius
        layer.maskedCorners = corners
        return self
    }
    
    @discardableResult func compressionResistance(_ priority: UILayoutPriority, axis: NSLayoutConstraint.Axis) -> Self {
        self.setContentCompressionResistancePriority(priority, for: axis)
        return self
    }
    
    @discardableResult func contentHugging(_ priority: UILayoutPriority, axis: NSLayoutConstraint.Axis) -> Self {
        self.setContentHuggingPriority(priority, for: axis)
        return self
    }
    
    @discardableResult func userInteraction(_ enabled: Bool) -> Self {
        self.isUserInteractionEnabled = enabled
        return self
    }
    
    @discardableResult func hidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }
    
    @discardableResult func subView(_ view: UIView) -> Self {
        self.addSubview(view)
        return self
    }
    
    @discardableResult func clipsToBounds(_ bool: Bool) -> Self {
        self.clipsToBounds = bool
        return self
    }

    @discardableResult func tintColor(_ color: UIColor) -> Self {
        self.tintColor = color.color
        return self
    }
    
    @discardableResult func addInfoButton(with message: String?) -> Self {
        guard let superView = self.superview else {
            print("View should have a superview to add info button")
            return self
        }
        let existing = self.subviews.filter({ $0.isKind(of: InfoButton.self) })
        existing.forEach({ $0.removeFromSuperview() })
        self.contentHugging(.init(rawValue: 999), axis: .vertical)
        let infoButton = InfoButton(message: message)
        superView.addSubview(infoButton)
        infoButton.snp.makeConstraints({
            $0.left.equalTo(self.snp.right).offset(3)
            $0.bottom.equalTo(self.snp.top).offset(5)
            $0.width.height.equalTo(12)
        })
        
        return self
    }
    
    @discardableResult func removeInfoButton() -> Self {
        let existing = self.subviews.filter({ $0.isKind(of: InfoButton.self) })
        existing.forEach({ $0.removeFromSuperview() })
        
        return self
    }
}
