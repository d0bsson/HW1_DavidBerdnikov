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
    events[date] = [event]
    print("/n")
    print("Вы добавили событие \(event) в дату \(date)")
    print(events)
}

//b. Отображение событий:

func appDict(date: String) {
    print("""
          Введите цифру:
          1 - Добавить событие в эту дату
          2 - Показать событие в эту дату
          3 - Выйти
          """)
    let userCommand = readLine()
    
    if userCommand == "1" {
        print("Какое событие будет \(date)?")
        if let event = readLine() {
            insertEvent(date: date, event: event)
        }
        
    } else if userCommand == "2" {
        print("В какую дату показать событие?")
        if let date = readLine() {
            showEvents(date: date)
        }
        
    } else if userCommand == "3" {
        print("Вы вышли")
        
    } else {
        print("Такой команды не существует")
    }
}

func showEvents(date: String) {
    if let eventsOfDate = events[date] {
        print(eventsOfDate)
    } else {
        print("Такой даты не существует")
    }
}
appDict(date: "22/02/2022")
