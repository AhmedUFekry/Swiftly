//
//  ViewController.swift
//  
//
//  Created by A7med Fekry on 26/03/2024.
//

import UIKit

import UIKit

public extension UIButton {
    
    func setCornerRadius(_ radius: CGFloat) {
            layer.cornerRadius = radius
            clipsToBounds = true
        }
    
    func setBorderColor(_ color: UIColor?, width: CGFloat) {
            layer.borderColor = color?.cgColor
            layer.borderWidth = width
        }
    
    func setCustomTitleColor(_ color: UIColor?, for state: UIControl.State) {
            setTitleColor(color, for: state)
        }
    
    func setTitleFont(_ font: UIFont?, for state: UIControl.State) {
            titleLabel?.font = font
        }
    func setTitlee(_ title: String?, for state: UIControl.State) {
            setTitle(title, for: state)
        }
        
    
        
        func setAttributedTitlee(_ title: NSAttributedString?, for state: UIControl.State) {
            setAttributedTitle(title, for: state)
        }
        
        func setTitleColorr(_ color: UIColor?, for state: UIControl.State) {
            setTitleColor(color, for: state)
        }
        
        func setTitleShadowColorr(_ color: UIColor?, for state: UIControl.State) {
            setTitleShadowColor(color, for: state)
        }
        
        func setImagee(_ image: UIImage?, for state: UIControl.State) {
            setImage(image?.withRenderingMode(.alwaysOriginal), for: state)
        }
        
        func setSelectedImage(_ image: UIImage?, for state: UIControl.State) {
            setImage(image?.withRenderingMode(.alwaysOriginal), for: state)
        }
        
        func setBackgroundImagee(_ image: UIImage?, for state: UIControl.State) {
            setBackgroundImage(image?.withRenderingMode(.alwaysOriginal), for: state)
        }
    
}
