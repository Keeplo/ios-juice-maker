//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

enum JuiceMakerError: Error {
    case outOfStock
}

struct Juice {
    var name: String
    var ingredients: Dictionary<Fruit, Int>
}
// MARK: --- 쥬스 메이커 타입
struct JuiceMaker {
    let fruitStore = FruitStore.shared

    func makeJuice(_ juice: Juice) throws -> String {
        let isAvailableStock = checkStock(juice.ingredients)
        guard isAvailableStock else { throw JuiceMakerError.outOfStock }
        
        for (fruit, removingQuantity) in juice.ingredients {
            fruitStore.changeStock(fruit, removingQuantity)
        }
        return juice.name
    }
    func checkStock(_ ingredients: Dictionary<Fruit, Int>) -> Bool {
        for (fruit, removingQuantity) in ingredients {
            if fruitStore.currentStock(fruit) < removingQuantity {
                return false
            }
        }
        return true
    }
}
