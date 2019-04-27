//
//  Model.swift
//  TODOLIST
//
//  Created by Adakhanau on 26/04/2019.
//  Copyright © 2019 Adakhan. All rights reserved.
//

import Foundation


var todoItems: [[String: Any]] {
    
    set {
        UserDefaults.standard.set(newValue, forKey: "TodoDataKey")
        UserDefaults.standard.synchronize()
    }
    
    get {
        if let array = UserDefaults.standard.array(forKey: "TodoDataKey") as? [[String: Any]] {
            return  array
        } else {
            return  []
        }
    }
}


func addItem(nameItem: String, descriptionItem: String, isCompleted: Bool = false) {
    todoItems.append(["Name": nameItem, "Description": descriptionItem, "isCompleted": isCompleted])
}

func removeItem(at index: Int) {
    todoItems.remove(at: index)
}

func moveItem(fromIndex: Int, toIndex: Int) {
    let from = todoItems[fromIndex]
    todoItems.remove(at: fromIndex)
    todoItems.insert(from, at: toIndex)
}

func changeState(at item: Int) -> Bool {
    todoItems[item]["isCompleted"] = !(todoItems[item]["isCompleted"] as! Bool)
    
    return (todoItems[item]["isCompleted"] as! Bool)
}




