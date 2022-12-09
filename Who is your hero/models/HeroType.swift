//
//  HeroType.swift
//  Who is your hero
//
//  Created by Vladimir on 06.11.2022.
//

import UIKit



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
    
    var image: UIImage {
           switch self {
           case .Bezrukov:
               return UIImage(named:"Bezrukov")!
           case .Lewis:
               return UIImage(named: "Lewis")!
           case .Craig:
               return UIImage(named: "Craig")!
           case .Kharatyan:
               return UIImage(named: "Kharatyan")!
           case .Reeves:
               return UIImage(named: "Reeves")!
           case .Freeman:
               return UIImage(named: "Freeman")!
           case .Shnurov:
               return UIImage(named: "Shnurov")!
           case .Stallone:
               return UIImage(named: "Stallone")!
           case .Smith:
               return UIImage(named: "Smith")!
           }
       }
    
    
    
    


    var descriptionHero: String{
        switch self {
        case .Bezrukov:
            return """
            Сергей Безруков
            Дата рождения: 18 октября 1973
            Место рождения: Москва, Россия
            Вид деятельности: Актер, продюсер, писатель
"""
        case .Lewis:
            return """
            Дэмиен Льюис
            Дата рождения: 11 февраля 1971
            Место рождения: Англия
            Вид деятельности: Актер, продюссер, композитор

"""
        case .Craig:
            return """
            Дэниел Крэйг
            Дата рождения: 2 марта 1968
            Место рождения: Англия
            Вид деятельности: Актер

            """
        case .Kharatyan:
            return """
            Дмитрий Харатьян
            Дата рождения: 21 января 1960
            Место рождения: Узбекистан
            Вид деятельности: Актер

"""
        case .Reeves:
            return """
            Киану Чарльз Ривз
            Дата рождения: 2 сентября 1964
            Место рождения: Ливан
            Вид деятельности: Актер

"""
        case .Freeman:
            return """
            Морган Фримен
            Дата рождения: 1 июня 1937
            Место рождения: Соединённые Штаты Америки
            Вид деятельности: Актер, продюсер, режиссер фильма
"""
        case .Shnurov:
            return """
            Сергей Шнуров
            Дата рождения: 13 апреля 1973
            Место рождения: Россия
            Вид деятельности: Поэт, музыкант, исполнитель

"""
        case .Stallone:
            return """
            Майкл Сильве́стр Гарденцио Сталло́не
            Дата рождения: 6 июля 1946
            Место рождения: Соединённые Штаты Америки
            Вид деятельности: Актёр, кинорежиссёр, сценарист и продюсер
"""
        case .Smith:
            return """
            Уилл Смит
            Дата рождения: 25 сентября 1968
            Место рождения: Соединённые Штаты Америки
            Вид деятельности: Актер
"""
        }

    }
}
