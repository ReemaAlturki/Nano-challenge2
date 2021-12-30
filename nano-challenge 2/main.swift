//
//  main.swift
//  nano-challenge 2
//
//  Created by Reema Alturki on 27/05/1443 AH.
//

import Foundation

/*
 Bucket list
 Such as "100 things to do before you die". Typically aspirational.
 TODO list
 Such as "Weekend tasks to complete". Typically driven by necessary chores.
 Check list
 Such as "Server deployment checklist". Similar to the TODO list but recurring in usage.

*/

let lists = """
1-TODO list
2-Check list
3-Bucket list
"""


var todoList = [String]()
var checkList = [String]()
var bucketLest = [String]()
var userChoice: String?

class Functions {
    func seeAllLists(){
        print("TODO list")
        for (index, task) in todoList.enumerated(){
            print("\(index + 1): \(task)")
        }
        
        print("Check list")
        for (index, task) in checkList.enumerated(){
            print("\(index + 1): \(task)")
        }
        
        print("Bucket list")
        for (index, task) in bucketLest.enumerated(){
            print("\(index + 1): \(task)")
        }
    }

    func newTask(){
        print("Write down your task")
        if let userInput = readLine(){
            
       
        
        print(lists)
        print("Choose one of the lists")
        if let choice = readLine() {
        if choice == "1" {
            todoList.append(userInput)
        } else if choice == "2"{
            checkList.append(userInput)
        } else if choice == "3"{
            bucketLest.append(userInput)
        } else {
            print("wrong")
        }
    }
    }
    }
    func delete(){
        seeAllLists()
        print("Choose one of the lists")
        if let choice = readLine() {
        if choice == "1" {
            print("What do you want to delete from TODO list?")
            if let choice = readLine(){
                if let value = Int(choice){
                    todoList.remove(at: value - 1)
                }
            }
        } else if choice == "2"{
            print("What do you want to delete from Check list?")
            if let choice = readLine(){
                if let value = Int(choice){
                    checkList.remove(at: value - 1)
                }
            }
            
        } else if choice == "3"{
            print("What do you want to delete from Bucket list?")
            if let choice = readLine(){
                if let value = Int(choice){
                    bucketLest.remove(at: value - 1)
                }
            }
           
        } else {
            print("wrong")
        }
        }
    }
}
var functions = Functions()


repeat{

    print("--------------------------------------")
    print("Hello, Let's Get Your List Done!")
    print("-----------------MUNE-----------------")
    print("1-See All Lists")
    print("2-New Tasks")
    print("3-delete Tasks")
    print("4-Exit")
    print("--------------------------------------")
    print("Choose one option")
    print("--------------------------------------")
    
 userChoice = readLine()
    switch userChoice {
    case "1":
        functions.seeAllLists()
    case "2":
        functions.newTask()
    case "3":
        functions.delete()
    case "4":
        exit(0)
    default:
    print("please choose one option")
}

                

} while userChoice != "1" || userChoice != "2" || userChoice != "3"

