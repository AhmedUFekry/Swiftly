//
//  File.swift
//  
//
//  Created by A7med Fekry on 26/03/2024.
//

import Foundation
import UIKit
public extension UIScrollView {
    
    func setCustomBounces(_ bounces: Bool) {
            alwaysBounceVertical = bounces
            alwaysBounceHorizontal = bounces
        }
    
    func setCustomScrollEnabled(_ enabled: Bool) {
            isScrollEnabled = enabled
        }
    
    func setCustomContentSize(_ size: CGSize) {
            contentSize = size
        }
    func setInsetTop(_ inset: CGFloat) {
            var contentInset = self.contentInset
            contentInset.top = inset
            self.contentInset = contentInset
        }
        
        func setInsetLeft(_ inset: CGFloat) {
            var contentInset = self.contentInset
            contentInset.left = inset
            self.contentInset = contentInset
        }
        
        func setInsetBottom(_ inset: CGFloat) {
            var contentInset = self.contentInset
            contentInset.bottom = inset
            self.contentInset = contentInset
        }
        
        func setInsetRight(_ inset: CGFloat) {
            var contentInset = self.contentInset
            contentInset.right = inset
            self.contentInset = contentInset
        }
        
        func setScrollIndicatorInsetTop(_ inset: CGFloat) {
            var scrollIndicatorInsets = self.scrollIndicatorInsets
            scrollIndicatorInsets.top = inset
            self.scrollIndicatorInsets = scrollIndicatorInsets
        }
    func setScrollIndicatorInsetLeft(_ inset: CGFloat) {
           var scrollIndicatorInsets = self.scrollIndicatorInsets
           scrollIndicatorInsets.left = inset
           self.scrollIndicatorInsets = scrollIndicatorInsets
       }
       
       func setScrollIndicatorInsetBottom(_ inset: CGFloat) {
           var scrollIndicatorInsets = self.scrollIndicatorInsets
           scrollIndicatorInsets.bottom = inset
           self.scrollIndicatorInsets = scrollIndicatorInsets
       }
       
       func setScrollIndicatorInsetRight(_ inset: CGFloat) {
           var scrollIndicatorInsets = self.scrollIndicatorInsets
           scrollIndicatorInsets.right = inset
           self.scrollIndicatorInsets = scrollIndicatorInsets
       }
       
       func setContentOffsetX(_ offset: CGFloat) {
           var contentOffset = self.contentOffset
           contentOffset.x = offset
           self.contentOffset = contentOffset
       }
       
       func setContentOffsetY(_ offset: CGFloat) {
           var contentOffset = self.contentOffset
           contentOffset.y = offset
           self.contentOffset = contentOffset
       }

    func setContentSizeWidth(_ size: CGFloat) {
        var contentSize = self.contentSize
        contentSize.width = size
        self.contentSize = contentSize
    }
    
    func setContentSizeHeight(_ size: CGFloat) {
        var contentSize = self.contentSize
        contentSize.height = size
        self.contentSize = contentSize
    }
    
}
