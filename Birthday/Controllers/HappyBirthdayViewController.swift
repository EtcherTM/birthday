//
//  HappyBirthdayViewController.swift
//  Birthday
//
//  Created by Olivia James on 8/4/20.
//  Copyright © 2020 Sebastien James. All rights reserved.
//

import UIKit

class HappyBirthdayViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Enter your name below"
        nameTextField.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        nameTextField.endEditing(true)
        doneButton.setTitle("Surprise!", for: .normal)
        if nameTextField.text != "" {
            nameLabel.text = "Happy Birthday, \(nameTextField.text ?? "to you!")!"
            nameTextField.backgroundColor = #colorLiteral(red: 1, green: 0.8, blue: 0, alpha: 1)
        } else if doneButton.currentTitle! == "Surprise!" {
            nameLabel.text = "Happy Birthday to you!"
            doneButton.setTitle("Yay!", for: .normal)
        }
        nameTextField.text = ""
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
