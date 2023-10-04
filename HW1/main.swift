//
//  main.swift
//  HW1
//
//  Created by d0bsson on 20.09.2023.
//

import Foundation


//1 - Задание: Времена года и их температура

enum Season: String {
    case winter
    case spring
    case summer
    case fall
    
    var temperature: Double {
        switch self {
            
        case .winter:
            return -25
        case .spring:
            return -5
        case .summer:
            return 20
        case .fall:
            return -10
        }
    }
    
    func showTemperature() -> String {
        switch self {
            
        case .winter:
            return "Temperature for winter \(temperature)"
        case .spring:
            return "Temperature for spring \(temperature)"
        case .summer:
            return "Temperature for summer \(temperature)"
        case .fall:
            return "Temperature for fall \(temperature)"
        }
    }
}
let temperature = Season.winter
print(temperature.showTemperature())



// 2 -  Задание: Информация о транспортных средствах

enum Transport: Int {
    case auto = 60
    case train = 80
    case plane = 900
    case bike = 30
}
func maxSpeedOf(transport: Transport) {
    print("Max speed of \(transport) \(transport.rawValue)")
}

maxSpeedOf(transport: Transport.auto)



// 3 -  Задание: Статусы платежей
enum PaymentStatus {
    case notPay
    case inProgress
    case payment(date: String)
    case error(discription: String)
    
    
}

