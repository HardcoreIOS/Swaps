//
//  PlaySongViewController.swift
//  Swaps
//
//  Created by Abdurrahman on 10/3/16.
//  Copyright © 2016 AR Ehsan. All rights reserved.
//

import UIKit

class PlaySongViewController: UIViewController {

	@IBOutlet weak var songTitleLabel: UILabel!
	
	private var _selectedSong: String!
	
	var selectedSong: String {
		get {
			return _selectedSong
		} set {
			_selectedSong = newValue
		}
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()
		songTitleLabel.text = _selectedSong
	}

	@IBAction func musicListBtnPressed(_ sender: AnyObject) {
		dismiss(animated: true, completion: nil)
	}
	
	override var prefersStatusBarHidden: Bool {
		return true
	}
}
