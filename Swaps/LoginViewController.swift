//
//  LoginViewController.swift
//  SwappyScreens
//
//  Created by Abdurrahman on 10/2/16.
//  Copyright © 2016 AR Ehsan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	
	@IBOutlet weak var emailTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	@IBOutlet weak var logInBtn: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		emailTextField.alpha = 0
		passwordTextField.alpha = 0
		logInBtn.alpha = 0
		animateIn()
	}

	@IBAction func logIn(_ sender: AnyObject) {
		if !checkTextFields() {
			let errorVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "error") as! ErrorViewController
			self.addChildViewController(errorVC)
			errorVC.view.frame = self.view.frame
			self.view.addSubview(errorVC.view)
			errorVC.didMove(toParentViewController: self)
		} else {
			clearTextFields()
			performSegue(withIdentifier: "logIn", sender: nil)
		}
	}

	func clearTextFields() {
		emailTextField.text = ""
		passwordTextField.text = ""
	}

	func checkTextFields() -> Bool {
		if emailTextField.text != "" && passwordTextField.text != "" {
			return true
		} else {
			return false
		}
	}
	
	func animateIn() {
		UIView.animate(withDuration: 0.7) {
			self.emailTextField.frame.origin.y += 20
			self.passwordTextField.frame.origin.y += 20
			self.logInBtn.frame.origin.y -= 20
			self.emailTextField.alpha = 1
			self.passwordTextField.alpha = 1
			self.logInBtn.alpha = 1
		}
	}

	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		self.view.endEditing(true)
	}

	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}

}

