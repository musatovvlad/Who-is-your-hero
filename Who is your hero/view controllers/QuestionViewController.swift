//
//  QuestionViewController.swift
//  Who is your hero
//
//  Created by Vladimir on 22.10.2022.
//

import UIKit

class QuestionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    let arrayElementPcv = ["Карие","Голубые","Зеленые"]
    
    
    
    @IBOutlet weak var brownButton: UIButton!
    
    @IBOutlet weak var blondButton: UIButton!
    
    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var lightBrownButton: UIButton!
    
    @IBOutlet weak var grayHairedButton: UIButton!
    
    @IBOutlet weak var brunette: UIButton!
    
    @IBOutlet weak var radioButton1: UIButton!
    
    @IBOutlet weak var radioButton2: UIButton!
    
    @IBOutlet weak var pickerView: UIPickerView!
   
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1 // определяет количество компонентов (т.е один пикер)
    }

    
  
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return arrayElementPcv.count // определяет количество элементов (строк) в пикере
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {  // метод определяет заголовок для каждой строки
        return arrayElementPcv[row] // row - ряд
    }
    
   // func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) // что должно происходить при выборе элемента внутри компонента
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        pickerView.delegate = self
        pickerView.dataSource = self
        
        
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
        print("checkBox-",sender.tag)
}
    
    @IBAction func radioButtonAction(_ sender: UIButton) {
    
    if sender.tag == 1 {
        radioButton1.isSelected = true
        radioButton2.isSelected = false
    }
    else if sender.tag == 2 {
        radioButton2.isSelected = true
        radioButton1.isSelected = false
    }
        print("radioButton-" ,sender.tag)
  }
  
    
    
}
