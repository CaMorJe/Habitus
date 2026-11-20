//
//  Model.swift
//  Habitus
//
//  Created by Cauan de Jesus Nascimento de Morais on 12/11/26.
//

import Foundation
import SwiftUI

enum HabitType: String, CaseIterable, Identifiable {
    case exercise = "Exercise"
    case read = "Read"
    case meditation = "Meditation"
    
    var id: Self { self }
}

var mockHabit1 = Habit(type: .meditation)
var mockHabit2 = Habit(type: .meditation)
var mockHabit3 = Habit(type: .read)
var mockHabit4 = Habit(type: .exercise)
var mockHabit5 = Habit(type: .read)
var mockHabit6 = Habit(type: .meditation)

struct Habit: Identifiable {
    var type: HabitType
    var id = UUID()
    var name: String {
        return type.rawValue
    }
    
    var color: Color {
        switch type {
        case .meditation:
            return Color(red:75 / 255, green:166 / 255, blue: 239 / 255)
        case .read:
            return Color(red:161 / 255, green:206 / 255, blue: 97 / 255)
        case .exercise:
            return Color(red:248 / 255, green:214 / 255, blue: 80 / 255)
        }
    }
    
    var icon: Image {
        switch type {
        case .meditation:
            return Image(systemName: "figure.mind.and.body")
        case .read:
            return Image(systemName: "figure.mind.and.body")
        case .exercise:
            return Image(systemName: "figure.yoga")
        }
    }
    
    static let mockHabits: [Habit] = [mockHabit1, mockHabit2, mockHabit3, mockHabit4, mockHabit5, mockHabit6]
}

