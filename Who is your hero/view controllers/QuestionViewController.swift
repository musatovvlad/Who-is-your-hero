//
//  QuestionViewController.swift
//  Who is your hero
//
//  Created by Vladimir on 22.10.2022.
//

import UIKit
import Algorithms


class QuestionViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var questionLabelCheckBox: UILabel!
    @IBOutlet weak var checkBoxButtonStack: UIStackView!
    
    @IBOutlet var checkBoxButtonsLabel: [UILabel]!
    @IBOutlet weak var brownButton: UIButton!
    @IBOutlet weak var blondButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var lightBrownButton: UIButton!
    @IBOutlet weak var grayHairedButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var brunette: UIButton!
    
    @IBOutlet weak var questionLabelRadioButton: UILabel!
    @IBOutlet weak var radioButtonStack: UIStackView!
    @IBOutlet var radioButtonsLabel: [UILabel]!
    @IBOutlet weak var radioButton1: UIButton!
    @IBOutlet weak var radioButton2: UIButton!
    
    @IBOutlet weak var questionPickerLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var questionHeightLabel: UILabel!
    @IBOutlet var rangedLabelsHeight: [UILabel]!
    @IBOutlet weak var rangeHeight: UISlider!
    
    @IBOutlet weak var questionWeightLabel: UILabel!
    @IBOutlet var rangedLabelsWeight: [UILabel]!
    @IBOutlet weak var rangeWeight: UISlider!
    
    private var arrayElementPcv:[String] = []
    var numberLine = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1 // определяет количество компонентов (т.е один пикер)
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return arrayElementPcv.count // определяет количество элементов (строк) в пикере
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {  // метод определяет заголовок для каждой строки
        return arrayElementPcv[row] // row - ряд
    }
    internal func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) { // что должно происходить при выборе элемента внутри компонента
        numberLine = row
    }
    private var answerChosen:[Answer] = []
    private var currentAnswer:[Answer]{
        currentQuestion.answers
    }
    private var currentQuestion:Question{
        Question.oll[questionIndex]
    }
    var questionIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        navigationItem.title = "Ответь на вопросы"
        
        rangeWeight.maximumValue = 0.9999
        rangeWeight.maximumValue = 0.9999
        answerChosen.removeAll()
        
        checkBox()
        radioButton ()
        picker()
        sliderHeight()
        sliderWeight()
        
        func checkBox () { //the function allows you to select an element - "one of" in the checkBox block
            questionLabelCheckBox.text = currentQuestion.text //add question in label checkBox
            
            var array: [String] = []
            for i in currentAnswer{
                array.append(i.text)
            }
            let sortArray = array.uniqued().sorted() //selection and definition of unique elements for filling labels of answer options in the checkBox block
            for (label,answer) in zip (checkBoxButtonsLabel,sortArray){
                label.text = answer
            }
        }
        
        func radioButton (){//the function allows you to select an element - "one of" in the radioButton block
            questionIndex = 1
            questionLabelRadioButton.text = currentQuestion.text//add question in label radioButton
            var array: [String] = []
            for i in currentAnswer{
                array.append(i.text)
            }
            let sortArray = array.uniqued().sorted()//selection and definition of unique elements for filling labels of answer options in the radioButton block
            for (label,answer) in zip (radioButtonsLabel,sortArray){
                label.text = answer
            }
        }
        
        func picker(){ // adds answer values to the picker
            questionIndex += 1
            questionPickerLabel.text = currentQuestion.text
            var array:[String]=[]
            for i in currentAnswer{
                array.append(i.text)
            }
            let sortArray = array.uniqued().sorted()
            for element in sortArray{
                arrayElementPcv.append(element)
            }
        }
        
        func sliderHeight() {
            questionIndex += 1
            questionHeightLabel.text = currentQuestion.text
            rangedLabelsHeight.first?.text = currentQuestion.answers.first?.text
            rangedLabelsHeight.last?.text = currentQuestion.answers.last?.text
        }
        
        func sliderWeight() {
            questionIndex += 1
            questionWeightLabel.text = currentQuestion.text
            rangedLabelsWeight.first?.text = currentQuestion.answers.first?.text
            rangedLabelsWeight.last?.text = currentQuestion.answers.last?.text
        }
    }
    
    @IBAction func checkBox(_ sender: UIButton) {
        
        if sender.tag == 0{
            brownButton.isSelected = true
            blondButton.isSelected = false
            redButton.isSelected = false
            lightBrownButton.isSelected = false
            grayHairedButton.isSelected = false
            blackButton.isSelected = false
            brunette.isSelected = false
        }
        else if sender.tag == 1 {
            brownButton.isSelected = false
            blondButton.isSelected = true
            redButton.isSelected = false
            lightBrownButton.isSelected = false
            grayHairedButton.isSelected = false
            blackButton.isSelected = false
            brunette.isSelected = false
        }
        else if sender.tag == 2 {
            brownButton.isSelected = false
            blondButton.isSelected = false
            redButton.isSelected = true
            lightBrownButton.isSelected = false
            grayHairedButton.isSelected = false
            blackButton.isSelected = false
            brunette.isSelected = false
        }
        else if sender.tag == 3 {
            brownButton.isSelected = false
            blondButton.isSelected = false
            redButton.isSelected = false
            lightBrownButton.isSelected = true
            grayHairedButton.isSelected = false
            blackButton.isSelected = false
            brunette.isSelected = false
        }
        else if sender.tag == 4 {
            brownButton.isSelected = false
            blondButton.isSelected = false
            redButton.isSelected = false
            lightBrownButton.isSelected = false
            grayHairedButton.isSelected = true
            blackButton.isSelected = false
            brunette.isSelected = false
        }
        else if sender.tag == 5 {
            brownButton.isSelected = false
            blondButton.isSelected = false
            redButton.isSelected = false
            lightBrownButton.isSelected = false
            grayHairedButton.isSelected = false
            blackButton.isSelected = true
            brunette.isSelected = false
            
        }
        else if sender.tag == 6 {
            brownButton.isSelected = false
            blondButton.isSelected = false
            redButton.isSelected = false
            lightBrownButton.isSelected = false
            grayHairedButton.isSelected = false
            blackButton.isSelected = false
            brunette.isSelected = true
        }
    }
    
    @IBAction func radioButtonAction(_ sender: UIButton) {
        
        if sender.tag == 0 {
            radioButton1.isSelected = true
            radioButton2.isSelected = false
        }
        else if sender.tag == 1 {
            radioButton2.isSelected = true
            radioButton1.isSelected = false
        }
    }
    @IBAction func ButtonAction(_ sender: UIButton) {
        
        questionIndex = 0
        var valueCheckBoxButtonsLabel: [String] = []
        for i in checkBoxButtonsLabel{ // возвращаем значения checkBoxButtonsLabel и записываем в массив valueCheckBoxButtonsLabel (связали label and button)
            valueCheckBoxButtonsLabel.append(i.text!)
        }
        let  index = sender.tag
        guard 0 <= index && index < valueCheckBoxButtonsLabel.count else {
            return
        }
        let answer = valueCheckBoxButtonsLabel[index] // находим label.text по тегу button
        let resultsFilter = currentAnswer.filter({$0.text == "\(answer)"})
        for i in resultsFilter{
            answerChosen.append(i)
        }
        questionIndex = 1
        var valueRadioButtonsLabel: [String] = []
        for i in radioButtonsLabel{ // возвращаем значения checkBoxButtonsLabel и записываем в массив valueCheckBoxButtonsLabel (связали label and button)
            valueRadioButtonsLabel.append(i.text!)
        }
        let  indexRadioButtons = sender.tag
        guard 0 <= indexRadioButtons && indexRadioButtons < currentAnswer.count else {
            return
        }
        let valueRadio = valueRadioButtonsLabel[index] // находим label.text по тегу button
        let resultsFilterRadio = currentAnswer.filter({$0.text == "\(valueRadio)"})
        for element in resultsFilterRadio{
            answerChosen.append(element)
        }
        questionIndex = 2
        let selectedValue = arrayElementPcv[numberLine]
        let resultsSelectedFilter = currentAnswer.filter({$0.text == "\(selectedValue)"})
        for value in resultsSelectedFilter{
            answerChosen.append(value)
        }
        print(#line, answerChosen)
    }
}
