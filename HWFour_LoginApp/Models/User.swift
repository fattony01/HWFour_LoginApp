//
//  User.swift
//  HWFour_LoginApp
//
//  Created by Anton Kondratenko on 15.06.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static var getUser: User{
        User(login: "User", password: "Password", person: Person.getPerson)
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let company: String
    let position: String
    let tgLink: String
    let instLink: String
    let description: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static var getPerson: Person {
        Person(name: "Антон",
               surname: "Кондратенко",
               age: 25,
               company: "Soft99 Europe",
               position: "Master detailer",
               tgLink: "@fattony",
               instLink: "@antonandreeevich",
               description: "Мое имя вы уже знаете, но расскажу немного больше о себе.\nЯ из Украины, сейчас живу в Польше. Я являюсь экспертом в области ухода за автомобилями. Еще в Украине мы планировали открытие своей студии детейлинга, но обстоятельства заставили покинуть свою страну и уехать в Польшу. Сейчас я работаю в крупной компании Soft99 Europe, которая занимается всем, что связано с уходом за автомобиля. Мы продаем свою продукцию на всю Европу. Работаю я на позиции мастера детейлера.\nОчень люблю свою сферу и все, что связано с автомобиля, но, честно говоря, устал от цикличной ручной работы и устал быть привязанным к одному месту. Поэтому я решил сменить сферу деятельности. Еще в университетские годы я учил веб разработку, но сейчас сделал выбор в пользу ios разработки, так как являюсь фанатом техники Apple.")
    }
}
