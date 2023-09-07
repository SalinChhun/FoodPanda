//
//  Product.swift
//  FoodPanda
//
//  Created by PVH_002 on 2/9/23.
//

import Foundation
import UIKit
struct Product{
    var name: String
    var image: UIImage
    var price: String
    var dateRelease: String
    var promotionLabel: String
    var productDesc: String
}
var productList:[Product] = [
    Product(name: "13th May (Tk)", image: UIImage(named: "coffee")!, price: "$1.32 delivery free", dateRelease: "30 min", promotionLabel: "Top restaurant", productDesc: "$$ . Tea & Coffee, Cakes"),
    Product(name: "Dairy Queen (Tk)", image: UIImage(named: "iceCream")!, price: "1.00$", dateRelease: "20 min", promotionLabel: "DGPROMO", productDesc: "$$$, Desert and Ice Cream"),
    Product(name: "13th May (Tk)", image: UIImage(named: "coffee")!, price: "$1.32 delivery free", dateRelease: "30 min", promotionLabel: "Top restaurant", productDesc: "$$ . Tea & Coffee, Cakes"),
    Product(name: "Dairy Queen (Tk)", image: UIImage(named: "iceCream")!, price: "1.00$", dateRelease: "20 min", promotionLabel: "DGPROMO", productDesc: "$$$, Desert and Ice Cream"),
 ]

