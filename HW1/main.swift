//
//  main.swift
//  HW1
//
//  Created by d0bsson on 20.09.2023.
//

import Foundation

//1. Сортировка чисел: Дан массив чисел. Напишите функцию, которая возвращает отсортированный массив в порядке возрастания без использования стандартной функции sort().
func sort(_ array: [Int]) -> [Int] {
    var arr = array
    let n = array.count
    
    for i in 0..<n-1 {
        for m in 0..<n-i-1 {
            if arr[m] > arr[m+1] {
                let temp = arr[m]
                arr[m] = arr[m+1]
                arr[m+1] = temp
            }
        }
    }
    return arr
}

let a = sort([55, 4, 33, 2, 11])
print(a)

//2. Проверка палиндрома: Напишите функцию, которая принимает строку и возвращает true, если строка является палиндромом, и false в противном случае.
func isPalindrome(string:String) -> Bool {
    let reverseString = String(string.reversed())
    
    if string != "" && string == reverseString {
        print("Это слово полиндром")
        return true
    } else {
        print("Это не полиндром")
        return false
    }
}

//isPalindrome(string: "mam")

//3. 3. Сумма элементов массива: Дан массив целых чисел. Напишите функцию, которая возвращает сумму всех элементов массива.
func sumOf(numbers: [Int]) -> Int {
    var sumNumber = 0
    
    for i in 1...numbers.count {
        sumNumber += numbers[i-1]
    }
    return sumNumber
}

let check = sumOf(numbers: [1,33,554])
print(check)

//4. Конвертация температуры: fahrenheit = (celsius * 9.0/5.0) + 32.0. Напишите функцию, которая принимает значение температуры в градусах Цельсия и возвращает его эквивалент в градусах Фаренгейта.
func fromCelToFahr(num: Double) -> Double {
    let fahrenheit = num * 9/5 + 32
    return fahrenheit
}

let fahr = fromCelToFahr(num: 32)
print(fahr)

// 5. Записная книжка: Создайте массив, который содержит имя, телефон и электронную почту. Затем напишите функцию для поиска записи по имени.
//let notes = ["David", "ber.dev@yandex.ru", "+7932"]
//let name = readLine()
//
//func search(notes: [String]) {
//
//    for note in notes {
//        if note == name {
//            print("Имя \(name ?? "") найдено")
//            break
//        } else {
//            print("Имя \(name ?? "") не найдено")
//        }
//    }
//}

//search(notes: notes)


//6. Перестановка элементов массива: Напишите функцию, которая принимает массив и возвращает новый массив, где первый элемент становится последним, а последний — первым. Остальные элементы остаются на своих местах.

func changeArrays(array: [Int]) -> [Int] {
    var arr = array
    let count = array.count
    
    let c = arr[0]
    arr[0] = arr[count-1]
    arr[count-1] = c
    
    print(arr)
    return arr
}

changeArrays(array: [3,2,22])

//7. Форматирование строки: Напишите функцию, которая принимает строку и делает первую букву каждого слова заглавной.
//func newString(string: String) {
//    print("1")
//    let arrString = string.split(separator: " ")
//    print(1)
//    for char in arrString {
//        if let upperChar = char.first {
//            let NewUpperChar = upperChar.uppercased()
//            print(NewUpperChar)
//        }
//    }
//}
//
//newString(string: "каждое слово с новой строки")

//8. Напишите функцию, которая принимает день недели в форме строки и возвращает соответствующий день недели в числовом формате.
func weekDay(weekDay: String) -> Int {
    var number = 0
    
    switch weekDay {
    case "Понедельник":
        number = 1
    case "Вторник":
        number = 2
    case "Среда":
        number = 3
    case "Четверг":
        number = 4
    case "Пятница":
        number = 5
    case "Суббота":
        number = 6
    case "Воскресение":
        number = 7
    default:
        print("Такого дня недели нет")
    }
    return number
}

let day = weekDay(weekDay: "Суббота")
print(day)

//9. Уникальные символы: Напишите функцию, которая принимает строку и возвращает true, если все символы в строке уникальные, и false в противном случае.

func isUnique(str: String) -> Bool {
    let arrayStr = str.split(separator: "")
    var isUnique: Bool?
    
    for i in 1..<arrayStr.count-1 {
        if arrayStr[i] != arrayStr[i+1] {
            isUnique = true
        } else {
            isUnique = false
        }
    }
    return isUnique ?? false
}

let ask = isUnique(str: "1234566")
print(ask)

//10. Слияние массивов: Напишите функцию, которая принимает два массива и возвращает один массив, состоящий из элементов обоих массивов.

func twoArrays(array first: [Int], array second: [Int]) -> [Int] {
    let totalArray = first + second
    
    return totalArray
}
let total = twoArrays(array: [1,2,3], array: [4,5])
print(total)

// 11. Подсчет гласных: Напишите функцию, которая принимает строку и возвращает количество гласных в ней.

func howManyVowels(string: String) -> Int {
    let vowels = ["а", "о", "у", "ы", "э", "е", "ё", "и", "ю",
                  "я", "А", "О", "У", "Ы", "Э", "Е", "Ё", "И", "Ю", "Я"]
    var vowelsInt = 0
    
    for word in string.lowercased() {
        if vowels.contains(String(word)) {
            vowelsInt+=1
        }
    }
    return vowelsInt
}

let vowelsInt = howManyVowels(string: "Ровно 4 гласных")
print(vowelsInt)

// 12. Удаление дубликатов из массива: Напишите функцию, которая принимает массив и возвращает новый массив, который содержит все элементы исходного массива, но без дубликатов.

func uniqueArray(array: [Int]) -> [Int] {
    var uniqueArray = [Int]()
    
    for i in array {
        if !uniqueArray.contains(i) {
            uniqueArray.append(i)
        }
    }
    return uniqueArray
}

let filter = uniqueArray(array: [1,1,2,3,5,5,6,7,8,8])
print(filter)


//13. Сумма всех чисел до N: Напишите функцию, которая принимает число N и возвращает сумму всех чисел от 1 до N.

func sumBeforeNumber(number: Int) -> Int {
    var n = 1
    var total = 0
    
    while n <= number {
        total += n
        n += 1
    }
    return total
}

let sum = sumBeforeNumber(number: 6)
print(sum)

// 14. Длинное слово в строке: Напишите функцию, которая принимает строку и возвращает самое длинное слово в этой строке.

func longestString(string: String) -> String {
    var longestString = ""
    let newString = string.components(separatedBy: " ")
    
    for i in 1..<newString.count {
        if newString[i-1] > newString[i] {
            longestString = newString[i-1]
        } else {
            longestString = newString[i]
        }
    }
    return longestString
}

let long = longestString(string: "123 1234 12345")
print(long)

//15. Сокращение строки: Напишите функцию, которая принимает строку и число N, затем возвращает эту строку, но сокращенную до N символов, добавив в конец "...", если строка была усечена.

func cutString(string: String, to number: Int) -> String {
    var cuttenString = ""
    var newString = Array(string)
    
    for i in 1..<newString.count {
        while newString.count != number {
            cuttenString.append(newString[i-1])
            newString.remove(at: i-1)
        }
    }

    return cuttenString
}
let cutten = cutString(string: "привет как дела", to: 3)
print(cutten)


