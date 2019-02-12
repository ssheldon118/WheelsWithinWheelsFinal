//
//  Pricelist.swift
//  WheelsWithinWheels
//
//  Created by Stephen Sheldon on 1/22/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation


enum TuneUp : String{
    case silver
    case gold
    case platinum
}

class RepairPrice{
    var brand: String
    var level: TuneUp
    var price: Double
    var daysToRepair: Int
    
    
    init(_ brand: String, _ level: TuneUp, _ price: Double, _ days: Int){
        self.brand = brand
        self.level = level
        self.price = price
        self.daysToRepair = days
    }
}





var bikelist: [RepairPrice] = [RepairPrice("Trek", .silver, 40, 4),
                               RepairPrice("Cannondale", .silver, 40, 4),
                               RepairPrice("Salsa", .silver, 50, 4),
                               RepairPrice("Jamis", .silver, 60, 4),
                               RepairPrice("Specialized", .silver, 50, 4),
                               RepairPrice("Surly", .silver, 45, 4),
                               RepairPrice("Giant", .silver, 40, 4),
                               RepairPrice("Bianchi", .silver, 65, 4),
                               RepairPrice("Soma", .silver, 65, 4),
                               RepairPrice("Cervelo", .silver, 60, 4),
                               RepairPrice("Trek", .gold, 60, 4),
                               RepairPrice("Cannondale", .gold, 60, 4),
                               RepairPrice("Salsa", .gold, 70, 4),
                               RepairPrice("Jamis", .gold, 75, 4),
                               RepairPrice("Specialized", .gold, 70, 4),
                               RepairPrice("Surly", .gold, 60, 4),
                               RepairPrice("Giant", .gold, 60, 4),
                               RepairPrice("Bianchi", .gold, 85, 4),
                               RepairPrice("Soma", .gold, 80, 4),
                               RepairPrice("Cervelo", .gold, 75, 4),
                               RepairPrice("Trek", .platinum, 100, 4),
                               RepairPrice("Cannondale", .platinum, 100, 4),
                               RepairPrice("Salsa", .platinum, 115, 4),
                               RepairPrice("Jamis", .platinum, 120, 4),
                               RepairPrice("Specialized", .platinum, 120, 4),
                               RepairPrice("Surly", .platinum, 105, 4),
                               RepairPrice("Giant", .platinum, 105, 4),
                               RepairPrice("Bianchi", .platinum, 135, 4),
                               RepairPrice("Soma", .platinum, 135, 4),
                               RepairPrice("Cervelo", .platinum, 120, 4),
]


