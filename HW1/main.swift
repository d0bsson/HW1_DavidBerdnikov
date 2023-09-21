//
//  main.swift
//  HW1
//
//  Created by d0bsson on 20.09.2023.
//

import Foundation

//Количество денег
var money = 5000.0
//Процент вклада
let percent = 5.0

//Расчитываем на 5 лет (5 итераций)
money += (percent / 100 * money)
money += (percent / 100 * money)
money += (percent / 100 * money)
money += (percent / 100 * money)
money += (percent / 100 * money)

print("Вложил 1000, за 5 лет получил \(money)")
