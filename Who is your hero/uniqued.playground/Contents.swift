
import Algorithms



let scores: [Int] = [54,1,1,3,2,5,3,8,54,21]
let sample = scores.randomSample(count: 5)
let unique = scores.uniqued().sorted()


var greeting = "Hello, playground"

let namedHero = ["Bezrukov", "Lewis", "Craig", "Kharatyan", "Reeves", "Freeman", "Shnurov", "Stallone", "Smith"]

enum HeroType{


    case Bezrukov
    case Lewis
    case Craig
    case Kharatyan
    case Reeves
    case Freeman
    case Shnurov
    case Stallone
    case Smith

}

enum ResponseType {
    case singleCheckBox, singleRadioButton, singlePicker, rangeHeigh, rangeWeight  // тип ответа
}


let numbers = [1, 2, 3, 3, 2, 3, 3, 2, 2, 2, 1]
let uni = numbers.uniqued().sorted()
print(uni)



struct Answer{
    let text : String   //  текст ответа к которому этот персонаж принадлежит
    let type : HeroType
}



struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]

    let oll: [Question] = [
        Question(text: "Выберите цвет волос", type: .singleCheckBox, answers: [
            Answer(text: "шатен", type: .Shnurov),
            Answer(text: "шатен", type: .Stallone),
            Answer(text: "брюнет", type: .Reeves),
            Answer(text: "блонд", type: .Kharatyan),
            Answer(text: "русый", type: .Craig),
            Answer(text: "рыжий", type: .Lewis),
            Answer(text: "шатен", type: .Bezrukov),
            Answer(text: "черный", type: .Smith),
            Answer(text: "седой", type: .Freeman),

        ]),
        Question(text: "Выберите тип кожи", type: .singleRadioButton, answers: [
            Answer(text: "белый", type: .Shnurov),
            Answer(text: "белый", type: .Stallone),
            Answer(text: "белый", type: .Reeves),
            Answer(text: "белый", type: .Kharatyan),
            Answer(text: "белый", type: .Craig),
            Answer(text: "белый", type: .Lewis),
            Answer(text: "белый", type: .Bezrukov),
            Answer(text: "тёмный", type: .Smith),
            Answer(text: "тёмный", type: .Freeman),
        ]),
        Question(text: "Выберите цвет глаз", type: .singlePicker, answers: [
            Answer(text: "карие", type: .Shnurov),
            Answer(text: "карие", type: .Stallone),
            Answer(text: "карие", type: .Reeves),
            Answer(text: "голубые", type: .Kharatyan),
            Answer(text: "голубые", type: .Craig),
            Answer(text: "зеленые", type: .Lewis),
            Answer(text: "карие", type: .Bezrukov),
            Answer(text: "карие", type: .Smith),
            Answer(text: "карие", type: .Freeman),
        ]),
        Question(text: "Выберите рост", type: .rangeHeigh, answers: [
            Answer(text: "173", type: .Bezrukov),
            Answer(text: "177", type: .Shnurov),
            Answer(text: "177", type: .Stallone),
            Answer(text: "177", type: .Kharatyan),
            Answer(text: "178", type: .Craig),
            Answer(text: "185", type: .Lewis),
            Answer(text: "186", type: .Reeves),
            Answer(text: "188", type: .Smith),
            Answer(text: "188", type: .Freeman),



        ]),
        Question(text: "Выберите вес", type: .rangeWeight, answers: [
            Answer(text: "68", type: .Bezrukov),
            Answer(text: "72", type: .Kharatyan),
            Answer(text: "73", type: .Shnurov),
            Answer(text: "78", type: .Craig),
            Answer(text: "82", type: .Smith),
            Answer(text: "84", type: .Reeves),
            Answer(text: "86", type: .Lewis),
            Answer(text: "97", type: .Freeman),
            Answer(text: "102", type: .Stallone),

        ])
        ]
}









var questionIndex = 0




//private var answerChosen:[Answer] = []{
//     didSet{
//         print(#line, #function, answerChosen)
//     }
// }
//
//private var currentAnswer:[Answer]{
//    currentQuestion.answers
//}
//private var currentQuestion:Question{
//    Question.oll[questionIndex]
//}


//func viewDidLoad() {
//
//    checkBox()
//    questionIndex += 1
//    radioButton ()
//    questionIndex += 1
//    picker()
//    questionIndex += 1
//    sliderHeight()
//    questionIndex += 1
//    sliderWeight()
//}



//func checkBox (){
//
//       questionLabelCheckBox = currentQuestion.text
//    for (label,answer) in zip (checkBoxButtonsLabel,currentAnswer){
//            label.text = answer.text
//        print(#line,#function)
//        }
//    }
//func radioButton (){
//    questionLabelRadioButton.text = currentQuestion.text
//    for (label,answer) in zip (radioButtonsLabel,currentAnswer){
//        label.text = answer.text
//    print(#line,#function)
//    }
//}
//func picker() {
//    questionPickerLabel.text = currentQuestion.text
//}
//func sliderHeight() {
//    questionHeightLabel.text = currentQuestion.text
//}
//func sliderWeight() {
//    questionWeightLabel.text = currentQuestion.text
//}
//}
