//
//  ViewController.swift
//  Birthday
//
//  Created by Olivia James on 8/4/20.
//  Copyright © 2020 Sebastien James. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let text = "Click the button only if it's your birthday!"
        titleText.text = ""
        var interval = 0.0
        for i in text {
            Timer.scheduledTimer(withTimeInterval: 0.04 * interval, repeats: false) { (timer) in
                self.titleText.text?.append(i)
            }
            interval += 1
        }
    }

    @IBAction func hereButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toHappyBirthday", sender: self)
    }
    
}

