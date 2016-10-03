//
//  MusicListViewController.swift
//  Swaps
//
//  Created by Abdurrahman on 10/2/16.
//  Copyright © 2016 AR Ehsan. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController {
	
	@IBOutlet weak var musicTableView: UITableView!

	var musicList = ["Devslopin' yo", "Swifty Days", "Headache Java", "Stacky Views", "Pesky Constraints", "Lousy Python", "Coding all night", "Skeetch", "Don't use OBJ-c", "Swoops", "Slopesing", "Python is coming for you", "Merge", "Ezy Swift"]
	
    override func viewDidLoad() {
        super.viewDidLoad()
		self.musicTableView.delegate = self
		self.musicTableView.dataSource = self
	}
	
	@IBAction func closeScreen(_ sender: AnyObject) {
		dismiss(animated: true, completion: nil)
	}
	
	override var prefersStatusBarHidden: Bool {
		return true
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let dest = segue.destination as? PlaySongViewController {
			if let song = sender as? String {
				dest.selectedSong = song
			}
		}
	}

}

extension MusicListViewController : UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return musicList.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "music cell", for: indexPath)
		cell.textLabel?.text = musicList[indexPath.row]
		cell.textLabel?.textColor = UIColor(red: 109.0/255.0, green: 176.0/255.0, blue: 227.0/255.0, alpha: 1.0)
		cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16.0)
		return cell
	}
}

extension MusicListViewController : UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		let title = musicList[indexPath.row]
		performSegue(withIdentifier: "play song", sender: title)
	}
}










