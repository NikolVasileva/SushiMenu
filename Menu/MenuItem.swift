//
//  MenuItem.swift
//  Menu
//
//  Created by Nikol Vasileva on 1.04.24.
//

import Foundation

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
