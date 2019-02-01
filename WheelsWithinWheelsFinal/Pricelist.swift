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

class Bike{
    var name: String
    
    var silver: Double
    var gold: Double
    var platinum: Double
    
    var type: TuneUp?
    
    init(_ name: String, _ silver: Double, _ gold: Double, _ platinum: Double){
        self.name = name
        self.silver = silver
        self.gold = gold
        self.platinum = silver
    }
}



var bikelist: [Bike] = [Bike("Trek", 40, 60, 100), Bike("Cannondale", 40, 60, 100), Bike("Salsa", 50, 70, 115), Bike("Jamis", 60, 75, 120), Bike("Specialized", 50, 70, 120), Bike("Surly", 45, 60, 105), Bike("Giant", 40, 60, 105), Bike("Bianchi", 65, 85, 135), Bike("Soma", 65, 80, 135), Bike("Cervelo", 60, 75, 120)]


