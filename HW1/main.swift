//
//  main.swift
//  HW1
//
//  Created by d0bsson on 20.09.2023.
//

import Foundation

//MARK: - 1. Написать функцию, которая определяет, четное число или нет.
print("1. Написать функцию, которая определяет, четное число или нет.")
func evenNumber(_ number: Int) {
    if number % 2 == 0 {
        print("Число \(number) четное")
    } else {
        print("Число \(number) нечетное")
    }
}
evenNumber(2563)
print("\n")



//MARK: - 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
print("2. Написать функцию, которая определяет, делится ли число без остатка на 3.")
func divisionBy3(_ number: Int) {
    if number % 3 == 0 {
        print("Число \(number) делится на 3 без остатка")
    } else {
        print("Число \(number) не делится на 3 без остатка")
    }
}
divisionBy3(2563)
print("\n")



//MARK: - 3. Создать возрастающий массив из 100 чисел.
print("3. Создать возрастающий массив из 100 чисел.")
var numbers: [Int] = []

func createMassive(at: Int, to: Int) -> [Int] {
    for number in at..<to {
        numbers.append(number + 1)
    }
    print(numbers)
    return numbers
}
createMassive(at: 0, to: 100)
print("\n")




//MARK: - 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
print("4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.")
let result = numbers.filter { $0 % 2 != 0 && $0 % 3 == 0 }

print(result)
print("\n")




//MARK: - 5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов. Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.
print("Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.")
func createFibArray(n: Int) -> [Int] {
    var fibArray: [Int] = [0,1]
    
    for _ in 0...n - 2 {
        let first = fibArray[fibArray.count - 2]
        let second = fibArray.last!
        fibArray.append(first + second)
    }
    return fibArray
}
let fib = createFibArray(n: 50)
print(fib)
print("\n")



//MARK: - 6. Написать функцию которая находит факториал числа N
print("6. Написать функцию которая находит факториал числа N")
func factorial(number: Int) -> Int {
    if number == 0 {
        return 1
    } else {
        return number * factorial(number: number - 1)
    }
    
}
let fact = factorial(number: 5)
print("Факториал \(fact)")
print("\n")



//MARK: - 7. Калькулятор
print("7. ПРОСТОЙ КАЛЬКУЛЯТОР")
func calculator(a: Double, b: Double, operation: Character) -> Double {
    if operation == "+" {
        return a + b
    } else if operation == "-" {
        return a - b
    } else if operation == "*" {
        return a * b
    } else {
        return a / b
    }
}
let calc = calculator(a: 5, b: 5, operation: "*")
print("\n")



//MARK: - 8. Напишите функцию которая пределяет длинну строки.
print("8. Напишите функцию которая пределяет длинну строки.")

func lengthOfString(string: String) {
    if string.isEmpty == true {
        print("Введите предложение")
    } else {
        print("Предложение \(string) состоит из \(string.count) символов")
    }
}

lengthOfString(string: "")
print("\n")


//MARK: - 9. Напишите функцию которая определит максимальное число из трех.
print("9. Напишите функцию которая определит максимальное число из трех.")
func maxNum (a: Int, b: Int, c: Int) -> Int {
    var m = a
    if m > b, m > c {
        m = a
    } else if c > b {
        m = c
    } else {
        m = b
    }
    return m
}

let maxNumber = maxNum(a: 1, b: 2, c: 3)
print("Максимальное число \(maxNumber)")
print("\n")



//MARK: - 10. Напишите функцию которая сделает реверс строки которую введет пользователь
print("10. Напишите функцию которая сделает реверс строки которую введет пользователь")

func reverseString(string: String) {
    for char in string.reversed() {
        print(char, terminator: "")
    }
}

reverseString(string: "Hello world!")
print("\n")



//MARK: - 11. Напишите функцию которая конвертирует время из секунд в часы, минуты и секунды.
print("11. Напишите функцию которая конвертирует время из секунд в часы, минуты и секунды.")

func fromSecondToHours(seconds: Int) {
    let hours = seconds / 3600
    let minutes = (seconds - hours * 3600) / 60
    let sec = (seconds - hours * 3600) - minutes * 60
    print("В \(seconds) секундах \nчасов: \(hours), минут: \(minutes), секунд: \(sec)")
}
fromSecondToHours(seconds: 11111)
print("\n")


//MARK: - 12. Напишите функцию которая подсчитает количество слов в строке.
print("12. Напишите функцию которая подсчитает количество слов в строке.")

func lotOfWords(example: String) -> Int {
    let words = example.split(separator: " ")
    return words.count
}
let sentence = "Данный пример покажет вам как разделять текст по словам"
let howManyWords = lotOfWords(example: sentence)
print("В предложении \(howManyWords) слов")
print("\n")


//MARK: - 13. Напишите функцию которая выведит каждое слово строки на новой строке.
print("Напишите функцию которая выведит каждое слово строки на новой строке.")

func newLine(string: String) {
    let words = string.split(separator: " ")
    for word in words {
        print("\n\(word)")
    }
}
newLine(string: "Привет, как дела?")

print("\n")


//MARK: - 14. Напишите функцию которая выведит каждое слово через определенный интервал времени.
print("14. Напишите функцию которая выведит каждое слово через определенный интервал времени.")

func newLineAfter3sec(string: String) {
    let words = string.split(separator: " ")
    for word in words {
        sleep(3)
        print("\n\(word)")
    }
}
newLineAfter3sec(string: "Привет, как дела")

//MARK: - 15 задание по аналогии с 12
