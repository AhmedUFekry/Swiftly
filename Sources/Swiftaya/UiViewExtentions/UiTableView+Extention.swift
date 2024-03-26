//
//  File.swift
//  
//
//  Created by A7med Fekry on 26/03/2024.
//

import Foundation
import UIKit
public extension UITableView {
    
    
    
    func setCustomedRowHeight(_ height: CGFloat) {
        rowHeight = height
    }
    
    func setCustommSeparatorColor(_ color: UIColor?) {
        separatorColor = color
    }
    func setCustommDataSource(_ dataSource: UITableViewDataSource?) {
        self.dataSource = dataSource
    }
    
    func setCustommDelegate(_ delegate: UITableViewDelegate?) {
        self.delegate = delegate
    }
    
    
    
    func setCustommSeparatorStyle(_ style: UITableViewCell.SeparatorStyle) {
        separatorStyle = style
    }
    
    
    func setCustommBackgroundView(_ view: UIView?) {
        backgroundView = view
    }
    
    func setCustommSectionHeaderHeight(_ height: CGFloat) {
        sectionHeaderHeight = height
    }
    
    func setCustommSectionFooterHeight(_ height: CGFloat) {
        sectionFooterHeight = height
    }
    
    
}
