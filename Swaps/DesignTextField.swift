//
//  DesignTextField.swift
//  Swaps
//
//  Created by Abdurrahman on 10/2/16.
//  Copyright © 2016 AR Ehsan. All rights reserved.
//

import UIKit

@IBDesignable
class DesignTextField: UITextField {

	@IBInspectable var insetX: CGFloat = 0
	@IBInspectable var insetY: CGFloat = 0
	
	@IBInspectable var cornerRadius: CGFloat = 0

	override func awakeFromNib() {
		super.awakeFromNib()
		self.layer.cornerRadius = cornerRadius
	}

	override func textRect(forBounds bounds: CGRect) -> CGRect {
		return bounds.insetBy(dx: insetX, dy: insetY)
	}
	
	override func editingRect(forBounds bounds: CGRect) -> CGRect {
		return bounds.insetBy(dx: insetX, dy: insetY)
	}

}
