//
//  ViewController.swift
//  Egg timer
//
//  Created by student on 7/1/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    class ViewController: UIViewController {
        var timer = Timer()
        var isRunning = false
        var clock = 210
        
        @objc func runTimer() {
            if clock > 0 {
                clock -= 1
                clockLabel.text = String(clock)
            } else {
                timer.invalidate()
                isRunning = false
            }
    }
    
        @IBOutlet weak var clockLabel: UILabel!
        
        @IBAction func pauseTimer( sender: Any) {
            if isRunning {
                timer.invalidate()
                isRunning = false
            }
        }
        
        @IBAction func startTimer(_ sender: Any) {
            if !isRunning {
                timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.runTimer), userInfo: nil, repeats: true)
                isRunning = true
            }
        }
   
    @IBAction func decreasedByTen(_ sender: Any) {
        if clock >= 10 {
            clock -= 10
            clockLabel.text = String(clock)
        }
        }
    
        @IBAction func incraedByTen( sender: Any) {
            clock = 210
            clockLabel.text = String(clock)
}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        clockLabel.text = String(clock)
    }




