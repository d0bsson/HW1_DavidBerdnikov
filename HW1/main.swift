//
//  main.swift
//  HW1
//
//  Created by d0bsson on 20.09.2023.
//

import Foundation

class Queue {
    var ageSum: [Double] = []
    
    func push(_ element: Double) {
        ageSum.append(element) }
    
    subscript(indices: Int...) -> Double {
        var age = 0.0
        
        for index in indices where index < self.ageSum.count {
            age += ageSum[index] / indices
        }
        return age
    }
}

let queue = Queue()

queue.push(33)
queue.push(33)
queue.push(33)
queue.push(33)

print(queue.ageSum)









