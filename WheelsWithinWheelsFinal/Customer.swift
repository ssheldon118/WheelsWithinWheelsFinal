//
//  Customers.swift
//  WheelsWithinWheels
//
//  Created by Stephen Sheldon on 1/22/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation

class Customer: CustomStringConvertible{
    var name: (String, String)
    var email: String
    var number: Int?
    
    var balance: Double = 0
    var orders: [Order] = []
    
    var openOrders: [Order]{
        return orders.filter{!$0.paid}
    }
    
    init(_ name: (String, String), _ email: String){
        self.name = name
        self.email = email
        
    }
    
    func addOrder(_ order: Order){
        self.balance -= order.price
        self.orders.append(order)
    }
    
    func pay(_ amount: Double){
        self.balance += amount
    }
    
    var description: String{
        var str = "\n\n\n\nCustomer:\n┎"
        for _ in 0...(email.count + 6){ str += "─" }
        str += "┑\n│\(name.1), \(name.0)"
        for _ in 0...((email.count + 4) - (name.1.count + name.0.count)){ str += " "}
        str += "│\n│Email: \(email)│"
        str += "\n│Phone: \(String(number!))"
        for _ in 0...(email.count - 11){ str += " " }
        str += "│\n│"
        for _ in 0...(email.count + 6){ str += "-" }
        str += "│\n│Balance: $\(balance)"
        for _ in 0...(email.count - String(balance).count - 4){ str += " " }
        str += "│\n┖"
        for _ in 0...(email.count + 6){ str += "─" }
        str += "┙"
        
        if !openOrders.isEmpty{
            str += "\n\nOpen Orders:"
            for i in openOrders{
                str += "\n\(i)"
            }
        }
        return str
    }
        
}



