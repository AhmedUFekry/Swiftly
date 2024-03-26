//
//  File.swift
//  
//
//  Created by A7med Fekry on 26/03/2024.
//

import Foundation
import UIKit
public extension UILabel {
    
    func setCustomTextColor(_ color: UIColor?) {
            textColor = color
        }
    
    func setCustomTextAlignment(_ alignment: NSTextAlignment) {
            textAlignment = alignment
        }
    
    func setCustomLineBreakMode(_ lineBreakMode: NSLineBreakMode) {
            self.lineBreakMode = lineBreakMode
        }
    func setCustomText(_ text: String?) {
        self.text = text
    }
    

    
    func setCustomFont(_ font: UIFont?) {
        self.font = font
    }
    
    func setCustomAttributedText(_ attributedText: NSAttributedString?) {
        self.attributedText = attributedText
    }
    

    
    func setCustomNumberOfLines(_ numberOfLines: Int) {
        self.numberOfLines = numberOfLines
    }
    

    
    func setShadow(color: UIColor?, opacity: Float, offset: CGSize, radius: CGFloat) {
        layer.shadowColor = color?.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
    }
    func setShadowOpacity(_ opacity: Float) {
        layer.shadowOpacity = opacity
    }
    
    func setShadowOffset(_ offset: CGSize) {
        layer.shadowOffset = offset
    }
    
    func setShadowRadius(_ radius: CGFloat) {
        layer.shadowRadius = radius
    }


    
    
}
