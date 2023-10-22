//
//  main.swift
//  HW1
//
//  Created by d0bsson on 20.09.2023.
//

import Foundation

//1. Вооружение Описание: Создайте класс Weapon с двумя свойствами: имя оружия и владельцем оружия. Владелец может быть или боец, или не задан.
class Weapon {
    let nameWeapon: String
    let ownerWeapon: Fighter?
    
    init(nameWeapon: String, ownerWeapon: Fighter?) {
        self.nameWeapon = nameWeapon
        self.ownerWeapon = ownerWeapon
    }
    
}

// 2. Базовый боец Описание: Создайте класс Fighter. У каждого бойца должны быть имя, тип бойца, оружие, здоровье и сила. В дополнение к этому:

// Функция reduseDamage() будет уменьшать здоровье бойца на основе его силы.
// Функция attack() будет выводить информацию о атаке.
// Функция balanceHP() будет выводить текущее количество здоровья.
// Функция isDead() будет проверять, жив ли боец или мертв.
class Fighter {
    let name: String
    let typeFighter: String
    let weapon: Weapon
    var health: Double {
        50
    }
    var str: Double {
        30
    }
    
    init(name: String, typeFighter: String, weapon: Weapon, health: Double, str: Double) {
        self.name = name
        self.typeFighter = typeFighter
        self.weapon = weapon
    }
    
    func reduceDamage() -> Double {
        let damage = health - str
        return damage
    }
    
    func attack() {
        print("Сила удара = \(str)")
    }
    
    func balanceHP() {
        print("Текущее здоровье \(health)")
    }
    
    func isDead() {
        if health < 1 {
            print("Воин убит")
        }
    }
}


//3. Производные классы: Воин и Маг Описание:
//На основе базового класса Fighter создайте два класса: Warrior и Mag. Эти классы должны переопределять некоторые свойства и методы. Например, у каждого из них будет своя сила и особый навык:

//Воин может использовать shieldBash().
//Маг может использовать castSpell().

class Warrior: Fighter {
    override var str: Double {
        50
    }
    override var health: Double {
        100
    }
    
    func shieldBash() {
        print("Использую навык стан щитом")
    }
}

class Mage: Fighter {
    override var str: Double {
        25
    }
    override var health: Double {
        40
    }
    
    func castSpell() {
        print("Маг кастует навык")
    }
}

struct Person {
    let name: String
    let age: String
}


