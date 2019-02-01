//
//  Store.swift
//  WheelsWithinWheels
//
//  Created by Stephen Sheldon on 1/22/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation

class Accounts{
    var store: [Customer] = []
    
    func addCustomer(_ customer: Customer){
        customer.number = self.store.count + 1
        store.append(customer)
    }
}

class Orders{
    var orders: [Order] = []
    
    func addOrder(_ customer: Customer, _ bike: Bike, type: TuneUp, _ date: Date){
        bike.type = type
        let order = Order(customer, bike, date)
        orders.append(order)
        customer.addOrder(order)
    }
    
    func addOrder(_ order: Order, _ type: TuneUp){
        order.bike.type = type
        order.orderNumber = self.orders.count + 1
        orders.append(order)
        customer.addOrder(order)
    }
    
    
    func payOrder(_ customer: Customer, _ order: Order, _ amount: Double){
        customer.pay(amount)
        if (amount >= order.balance){
            order.paid = true
        }
        order.balance -= amount
    }
}
