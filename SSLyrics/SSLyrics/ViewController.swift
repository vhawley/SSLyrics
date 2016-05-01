//
//  ViewController.swift
//  SSLyrics
//
//  Created by Victor Hawley on 5/1/16.
//  Copyright © 2016 Victor Hawley Jr. All rights reserved.
//

import Cocoa
import ScriptingBridge

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let iTunes = SBApplication(bundleIdentifier: "com.apple.iTunes") as! iTunesApplication
        if iTunes.running {
            print("Yeahhhhh")
        } else {
            print("nooooo")
        }
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

