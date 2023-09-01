//
//  UIResponder+Extension.swift
//  tip-calculator
//
//  Created by Sajed Shaikh on 01/09/23.
//

import UIKit

extension UIResponder {
    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }
}
