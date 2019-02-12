 
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation


class Order: CustomStringConvertible{
    var customer: Customer
    var bike: Bike
    var dropDate: Date
    
    var pickedUp = false
    var paid = false
    
    var price: Double
    var balance: Double
    
    var orderNumber: Int = 0
    
    init(_ customer: Customer, _ bike: Bike, _ dropDate: Date){
        self.customer = customer
        self.bike = bike
        self.dropDate = dropDate
        
        if (bike.type == .silver){
            price = bike.silver
            balance = bike.silver * -1
        }
        else if (bike.type == .gold){
            price = bike.gold
            balance = bike.gold * -1
        }
        else{
            price = bike.platinum
            balance = bike.platinum * -1
        }
    }
    
    var pickUpDate: Date{
        if (bike.type == .silver){ return dropDate.add(days: 4)!}
        else if (bike.type == .gold){ return dropDate.add(days: 7)!}
        else if (bike.type == .platinum){ return dropDate.add(days: 10)!}
        return dropDate
    }
    
   
    
    var description: String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        var str = "┎"
        for _ in 0...(bike.type!.rawValue.count + bike.name.count + 13){ str += "─" }
        str += "┑\n│\(bike.type!.rawValue) tuneup, \(bike.name) bike│\n│"
        for _ in 0...(bike.type!.rawValue.count + bike.name.count + 13){ str += "-" }
        str += "│\n│Order Number: \(orderNumber)"
        for _ in 0...((bike.type!.rawValue.count + bike.name.count) - String(orderNumber).count - 1){ str += " "}
        str += "│\n│Balance Due: $\(balance * -1)"
        for _ in 0...((bike.type!.rawValue.count + bike.name.count) - String(balance).count){ str += " "}
        str += "│\n│Picked Up?: \(pickedUp)"
        for _ in 0...((bike.type!.rawValue.count + bike.name.count) - (String(pickedUp).count) + 1){ str += " "}
        str += "│\n│Complete on: \(dateFormatter.string(from: pickUpDate))"
        for _ in 0...((bike.type!.rawValue.count + bike.name.count) - (dateFormatter.string(from: pickUpDate).count)){ str += " "}
        str += "│\n┖"
        for _ in 0...(bike.type!.rawValue.count + bike.name.count + 13){ str += "─" }
        str += "┙"
        return str
    }
    
}

/*
=======
class Order: CustomStringConvertible {
    private static var ids: [String] = []
    
    let under: Account
    let created: Date
    let due: Date
    let price: Double
    let id: String
    
    var completed: Date?
    var pickedUp: Date?
    
    init(under: Account, due: Date, price: Double) {
        self.under = under
        created = Date(timeIntervalSinceNow: 0)
        self.due = due
        self.price = price
        
        //Generate unique ID
        var id = ""
        repeat {
            id = String(arc4random_uniform(1000))
        } while Order.ids.contains(id)
        self.id = id
        Order.ids.append(id)
        
        completed = nil
        pickedUp = nil
    }
    
    func complete() {
        if completed != nil {
            completed = Date(timeIntervalSinceNow: 0)
        }
    }
    func pickUp() {
        if pickedUp != nil {
            pickedUp = Date(timeIntervalSinceNow: 0)
        }
    }
    
    var description: String {
        let mainStr = "ORDER under: \(under.name) created: \(created) due: \(due) price: \(price) id: \(id) "
        let completedStr =  "completed: " + (completed?.description ?? "NONE")
        let pickedUpStr =  " picked up: " + (pickedUp?.description ?? "NONE")
        return "{" + mainStr + completedStr + pickedUpStr + "}"
    }
}

*/
