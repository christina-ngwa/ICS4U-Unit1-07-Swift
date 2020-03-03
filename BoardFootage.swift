import Foundation
// 
//  BoardFootage.swift
//  ICS4U-Unit1-07-Swift
// 
//  Created by Christina on 29/02/20.
//  Copyright © Christina Ngwa. All rights reserved.
// 
//  This program calculates the height of the board.
// 

// This function calculates the height of the board.
func boardFoot(l: Double, w: Double) -> Double {
    // variables
    let volume:Double = 144
    var h:Double = 0
    
    // process
    h = volume / l / w
    
    return h
}

print("Welcome to the board foot calculator.\n")

// variables
var l:Double = 0
var w:Double = 0

// input
while (true) {
    print("Enter length in inches: ")
    // process
    if let templ = Double(readLine()!) {
        if (templ > 0) {
            l = templ
            break
        } else {
            print("Please enter a positive number.")
        }
    } else {
        print("Invalid input. Please try again.")
    }
}

while (true) {
    print("Enter width in inches: ")
    // process
    if let tempW = Double(readLine()!) {
        if (tempW > 0) {
            w = tempW
            break
        } else {
            print("Please enter a positive number.")
        }
    } else {
        print("Invalid input. Please try again.")
    }
}

// call function
let height = boardFoot(l:l, w:w)

// output
print("Your height is \(height) inches.")