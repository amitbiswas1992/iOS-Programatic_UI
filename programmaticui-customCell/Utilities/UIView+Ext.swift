//
//  UIView+Ext.swift
//  programmaticui-customCell
//
//  Created by Amit Biswas on 1/27/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func pin(to superView: UIView){
        translatesAutoresizingMaskIntoConstraints                           = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive         = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive  = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive     = true
    }
}
