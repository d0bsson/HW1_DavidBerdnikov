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
    print("Выбирете функцию:\nДобавить событие\nПоказать событие в эту дату\nВыйти")
    readLine()
    
    
}

appDict(date: "22/02/2023")
