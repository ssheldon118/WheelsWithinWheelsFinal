//
//  main.swift
//  WheelsWithinWheels
//
//  Created by Stevie Sheldon on 1/22/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation

//Create System
var accounts = Accounts()
var orders = Orders()
var running = true


var customer = Customer(("Stephen", "Sheldon"), "ssheldon118@gmail.com")
var bike = bikelist[0]
var order = Order(customer, bike, Date())
accounts.store.append(customer)
orders.addOrder(order, .gold)

print("Welcome to Wheels within wheels!\nEnter customer email to access or create account.\nEnter 'recievable' to accsess all outstanding payments. \nEnter 'instore' to view all bikes that have not been yet picked up.")

while (running){
    print(".........")
    let input = readLine()
    let stringArray = splitStringIntoParts(input!)
    
    while(running){
        switch stringArray[0]{
        case "quit":
            running = false
            break
        case "help":
            print("help")
            break
        case "addrp":
            //implement differently
            switch stringArray[2]{
            case "silver": bikelist.append(RepairPrice(stringArray[1], .silver, Double(stringArray[3])!, Int(stringArray[3])!))
            case "gold": bikelist.append(RepairPrice(stringArray[1], .gold, Double(stringArray[3])!, Int(stringArray[3])!))
            case "platinum": bikelist.append(RepairPrice(stringArray[1], .platinum, Double(stringArray[3])!, Int(stringArray[3])!))
            default:
                print("User input error, please try again")
            }
            break
        case "addc":
            let account = Customer((stringArray[1], stringArray[2]))
            accounts.addCustomer(account)
            
            print("Account Created!")
            break
        case "addo":
            //let account = Customer((stringArray[1], stringArray[2]))
            //accounts.addCustomer(account)
            let imageObject = Accounts.store.filter{ $0.name == imageUUID }.first
            
            let date = Date()
            
            orders.addOrder(account, bike, type: type!, date)
            print("Account Created!")
            break
        default:
            print("break")
            break
        }
    }
}
/*r
 switch response{
 case let str where str!.contains("@"):
 if let account = accounts.store.first(where: { $0.email == response }) {
 let inAccount = true
 while inAccount{
 print(account)
 print("Enter 'pay *ordernumber* *amount*' to enter payment for an order. \nEnter 'new *bikename* *packagetype*' to enter a new tuneup order. \n.........")
 //print("Enter 'new *bikename* *packagetype*' to enter a new tuneup order.")
 let input = readLine()
 switch input{
 case let str where str!.contains("pay"):
 //let stringArra = input!.components(separatedBy: CharacterSet.decimalDigits.inverted)
 let stringArray = splitStringIntoParts(input!)
 orders.payOrder(customer, orders.orders.first(where: { $0.orderNumber == Int(stringArray[1]) })!, Double(stringArray[2])!)
 print("\(account.name.1) paid $\(stringArray[2]) on order # \(Int(stringArray[1]))")
 print(account)
 break
 case let str where str!.contains("new"):
 let stringArray = splitStringIntoParts(input!)
 if let bike = bikelist.first(where: { $0.name == stringArray[1] }) {}
 else {break}
 var type: TuneUp?
 
 switch stringArray[2]{
 case "silver": type = .silver
 case "gold": type = .gold
 case "platinum": type = .platinum
 default:
 break
 }
 
 let date = Date()
 
 orders.addOrder(account, bike, type: type!, date)
 print(account)
 break
 default:
 print("break")
 break
 }
 }
 }
 else{
 print("First Name:")
 let first = readLine()!
 print("Last Name:")
 let last = readLine()!
 print("Phone Number:")
 let number = Int(readLine()!)
 let account = Customer((first, last), response!)
 accounts.addCustomer(account)
 print("Account Created!")
 print(account)
 break
 }
 break
 case "recievable":
 print()
 
 default:
 print("break")
 break
 }
 }
 */

//print("Welcome!")
//
//repeat {
//    print("")
//} while runMainLoop()

