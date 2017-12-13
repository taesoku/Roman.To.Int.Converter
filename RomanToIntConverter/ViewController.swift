//
//  ViewController.swift
//  RomanToIntConverter
//
//  Created by Luca Vinci Christini on 13/12/17.
//  Copyright © 2017 Luca Vinci Christini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func convert() {
        let output = 0
        var input = RomanTextView.text;
        for (var i = 0; i < input.count; i += 1) {
            if (i + 1 < input.count && dictionary[input[i] ] < dictionary[input[i + 1]]) {
                    output -= dictionary[(String) input[i]]
            }
            else {
                output += dictionary[(String) input[i]]
            }
        }
        IntTextView.text = (String) output
    }
    
    var dictionary = [1: "I",
                      5: "V",
                      10: "X",
                      50: "L",
                      100: "C",
                      500: "D",
                      1000: "M"]
    
    @IBAction func ConvertButtonClicked(_ sender: AnyObject) {
        convert()
    }
    
    @IBOutlet weak var RomanTextView: UITextView!
    @IBOutlet weak var IntTextView: UITextView!
}

