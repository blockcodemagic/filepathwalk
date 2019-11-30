//
//  ViewController.swift
//  testfilepath
//
//  Created by Sona Noorul Ameen on 11/29/19.
//  Copyright © 2019 Sona Noorul Ameen. All rights reserved.
//

import Cocoa
import Filepathwalk

class ViewController: NSViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
		print("Loading app...")
		let path = NSHomeDirectory() + "/Downloads"
		print(path)
		FilepathwalkWalk(path)
		print("Completed")
	}

	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}


}

