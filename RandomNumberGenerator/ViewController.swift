//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by mark on 11/7/18.
//  Copyright © 2018 Swift Dev Journal. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var showNumberButton: NSButton!
    @IBOutlet var valueLabel: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func showRandomNumber(_ sender: Any) {
        let randomValue = generateRandomNumber()
        updateLabel(value: randomValue)
    }
    
    func generateRandomNumber() -> Int {
        let minValue = 0
        let maxValue = 99
        return Int.random(in: minValue...maxValue)
    }
    
    func updateLabel(value: Int) {
        valueLabel.stringValue = value.description
    }
}

