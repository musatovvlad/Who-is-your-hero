//
//  QuestionViewController.swift
//  Who is your hero
//
//  Created by Vladimir on 22.10.2022.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var brownButton: UIButton!
    
    @IBOutlet weak var blondButton: UIButton!
    
    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var lightBrownButton: UIButton!
    
    @IBOutlet weak var grayHairedButton: UIButton!
    
    @IBOutlet weak var brunette: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func radioButtonCheckboxAction(_ sender: UIButton) {
    
    if sender.tag == 1{
        brownButton.isSelected = true
        blondButton.isSelected = false
        redButton.isSelected = false
        lightBrownButton.isSelected = false
        grayHairedButton.isSelected = false
        brunette.isSelected = false
    }
else if sender.tag == 2 {
    brownButton.isSelected = false
    blondButton.isSelected = true
    redButton.isSelected = false
    lightBrownButton.isSelected = false
    grayHairedButton.isSelected = false
    brunette.isSelected = false
}
    else if sender.tag == 3 {
        brownButton.isSelected = false
        blondButton.isSelected = false
        redButton.isSelected = true
        lightBrownButton.isSelected = false
        grayHairedButton.isSelected = false
        brunette.isSelected = false
    }
    else if sender.tag == 4 {
        brownButton.isSelected = false
        blondButton.isSelected = false
        redButton.isSelected = false
        lightBrownButton.isSelected = true
        grayHairedButton.isSelected = false
        brunette.isSelected = false
    }
    else if sender.tag == 5 {
        brownButton.isSelected = false
        blondButton.isSelected = false
        redButton.isSelected = false
        lightBrownButton.isSelected = false
        grayHairedButton.isSelected = true
        brunette.isSelected = false
    }
    else if sender.tag == 6 {
        brownButton.isSelected = false
        blondButton.isSelected = false
        redButton.isSelected = false
        lightBrownButton.isSelected = false
        grayHairedButton.isSelected = false
        brunette.isSelected = true
    }
        print(sender.tag)


}
}
