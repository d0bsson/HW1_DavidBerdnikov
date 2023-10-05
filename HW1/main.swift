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


// 4 -  Задание: Рекомендации по режимам камеры

enum CameraMode: String {
    case auto = "Советуем если совсем не шаришь в фото"
    case portret = "Классный режим для размытия фона, для инсты пойдет"
    case landscape = "Если честно, сам не знаю, может для природы"
    case night = "Если темненько вокруг - выбор твой"
}

func recCameraMode(cameraMode: CameraMode) {
    print(cameraMode.rawValue)
}

recCameraMode(cameraMode: .landscape)


// 5 - Задание: Диеты животных в зоопарке

enum AnimalType: String {
    case predator = "Это Хищник. Ест всех подряд."
    case herbivore = "Это травоядное. Есть травушку"
    case insect = "Это насекомое. Ест листики"
}

func whatEatAnimal(animal: AnimalType) {
    print(animal.rawValue)
}
whatEatAnimal(animal: .insect)

// 6 - Задание: Отслеживание статуса заказа в ресторане

enum OrderStatus: String, CaseIterable {
    case accepted = "Ваш заказ принят. Скоро будет готовиться"
    case prepared = "Ваш заказ готовится. Скоро будет готов к выдаче"
    case readyToServe = "Ваш заказ готов к выдаче. Скоро будет доставлен"
    case delivered = "Ваш заказ доставляется. Ожидайте"
}

func nextOrderStatus(orderStatusNow: OrderStatus) {
    switch orderStatusNow {
    case .accepted: print("Следующий статус готовится")
    case .prepared: print("Следующий статус готов к выдаче")
    case .readyToServe: print("Следующий статус доставляется")
    case .delivered: print("Ваш заказ скоро будет доставлен")
    }
}

nextOrderStatus(orderStatusNow: .prepared)

//7 - Задание: Информация о номерах в отеле

enum RoomType {
    case oneBedRoom
    case twoBedRoom
    case luxury
}
