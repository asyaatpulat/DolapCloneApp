//
//  Product.swift
//  DolapCloneApp
//
//  Created by Asya Atpulat on 18.08.2023.
//

import Foundation

class Product {
    var brand:String?
    var price:Double?
    var image:String?
    
    init(brand: String, price: Double, image: String) {
        self.brand = brand
        self.price = price
        self.image = image
    }
}
