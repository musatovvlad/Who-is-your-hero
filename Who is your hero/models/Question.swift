//
//  Question.swift
//  Who is your hero
//
//  Created by Vladimir on 06.11.2022.

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
    static let oll: [Question] = [
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
            Answer(text: "185", type: .Lewis),
            Answer(text: "177", type: .Shnurov),
            Answer(text: "177", type: .Stallone),
            Answer(text: "177", type: .Kharatyan),
            Answer(text: "178", type: .Craig),
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



