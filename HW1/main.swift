//
//  main.swift
//  HW1
//
//  Created by d0bsson on 20.09.2023.
//

import Foundation

//a. Добавление события:
var events = [String: [String]]()

func insertEvent(date: String, event: String) {
    
    if events.index(forKey: date) == nil {
        events[date] = [event]
    }
    print(events)
}

insertEvent(date: "22/02/2022", event: "NewYear")
insertEvent(date: "22/04/2023", event: "H-day")

//b. Отображение событий:


func appDict(date: String) {
    print("Уважаемый пользователь, выберете функцию:\n1)Добавить событие в эту дату\n2)Показать событие в эту дату\n3)Выйти")
    var userCommand = readLine()
    
    if userCommand == "Добавить событие в эту дату" {
        print("Добавить событие") 
    } else if userCommand == "Показать событие в эту дату" {
        print("Показать событие в эту дату")
    } else if userCommand == "Выйти" {
        print("Выйти")
    } else {
        "Такой команды не существует"
    }
}

appDict(date: "22/02/2023")
