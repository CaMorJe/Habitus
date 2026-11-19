//
//  Model.swift
//  Habitus
//
//  Created by Cauan de Jesus Nascimento de Morais on 12/11/26.
//

import Foundation
import SwiftUI

public let HabitColors = [
    Color(red:75 / 255, green:166 / 255, blue: 239 / 255),
    Color(red:161 / 255, green:206 / 255, blue: 97 / 255),
    Color(red:248 / 255, green:214 / 255, blue: 80 / 255),
    Color(red:243 / 255, green:176 / 255, blue: 74 / 255),
    Color(red:238 / 255, green:140 / 255, blue: 111 / 255),
    Color(red:237 / 255, green:113 / 255, blue: 165 / 255),
    Color(red:207 / 255, green:102 / 255, blue: 247 / 255),
    Color(red:77 / 255, green:110 / 255, blue: 247 / 255),
    Color(red:236 / 255, green:107 / 255, blue: 102 / 255)
]

public let IconNameArray: [String] = [
    "alarm",
    "book",
    "pencil",
    "desktopcomputer",
    "gamecontroller",
    "sportscourt",
    "lightbulb"
]

enum HabitType: String, CaseIterable, Identifiable {
    case exercise = "Exercise"
    case read = "Read"
    case meditation = "Meditation"
    
    var id: Self { self }
}

var mockHabit1 = Habit(icon: IconNameArray[0], theme: HabitColors[0], type: .meditation)
var mockHabit2 = Habit(icon: IconNameArray[0], theme: HabitColors[0], type: .meditation)
var mockHabit3 = Habit(icon: IconNameArray[1], theme: HabitColors[1], type: .read)
var mockHabit4 = Habit(icon: IconNameArray[2], theme: HabitColors[2], type: .exercise)
var mockHabit5 = Habit(icon: IconNameArray[3], theme: HabitColors[3], type: .read)
var mockHabit6 = Habit(icon: IconNameArray[4], theme: HabitColors[4], type: .meditation)

public struct Habit: Identifiable {
    var icon: String
    var theme: Color
    var type: HabitType
    public var id = UUID()
    
    static let mockHabits: [Habit] = [mockHabit1, mockHabit2, mockHabit3, mockHabit4, mockHabit5, mockHabit6]
}

