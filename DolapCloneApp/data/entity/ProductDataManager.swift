//
//  ProductDataManager.swift
//  DolapCloneApp
//
//  Created by Asya Atpulat on 20.08.2023.
//

import Foundation

class ProductDataManager {
    static let shared = ProductDataManager()
    
    private init() {}
    
    func getProductList() -> [Product] {
        return [
            Product(brand: "Apple", price: 26.900, image: "macbook"),
            Product(brand: "Golden Goose", price: 12.500, image: "goldengoose"),
            Product(brand: "Bonheur", price: 3.000, image: "bonheur"),
            Product(brand: "Ralph Lauren", price: 1.070, image: "ralphlauren"),
            Product(brand: "Ami Paris", price: 4.500, image: "amiparis"),
            Product(brand: "Rayban", price: 1.100, image: "rayban"),
            Product(brand: "BirkenStock", price: 1.100, image: "birkenstock"),
            Product(brand: "Apple", price: 25.000, image: "iphone")
        ]
    }
}
