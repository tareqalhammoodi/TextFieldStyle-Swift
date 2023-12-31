//
//  Extensions.swift
//  TextFieldStyle-Swift
//
//  Created by Tareq Alhammoodi on 28.06.2023.
//

import Foundation
import UIKit

extension UIView {

    public var width: CGFloat {
        return frame.size.width
    }

    public var height: CGFloat {
        return frame.size.height
    }

    public var top: CGFloat {
        return frame.origin.y
    }

    public var bottom: CGFloat {
        return frame.size.height + frame.origin.y
    }

    public var left: CGFloat {
        return frame.origin.x
    }

    public var right: CGFloat {
        return frame.size.width + frame.origin.x
    }

}

// Add border bottom to UITextField.
extension UIView {
    func addBottomBorder(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0,
                              y: frame.size.height - width,
                              width: frame.size.width - 25,
                              height: width)
        layer.addSublayer(border)
    }
}
