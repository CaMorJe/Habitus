//
//  AddHabitView.swift
//  Habitus
//
//  Created by Cauan de Jesus Nascimento de Morais on 17/11/26.
//

import SwiftUI

struct AddHabitView: View {
    var body: some View {
        VStack {
            HabitHorizontalListView(HabitList: Habit.mockHabits)
        }
        .padding()
    }
}


struct HabitHorizontalListView: View {
    public let HabitList: [Habit]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(HabitList) { habit in
                    VStack {
                        habitCardView(cardColor: habit.theme, cardName: habit.type.rawValue, cardIcon: habit.icon)
                        
                        Text(habit.type.rawValue)
                            .font(.headline.bold())
                    }
                }
            }
        }
    }
}


struct habitCardView: View {
    var cardColor: Color
    var cardName: String
    var cardIcon: String
    
    var body: some View {
        Image(systemName: cardIcon)
            .resizable()
            .scaledToFit()
            .frame(width: 60, height: 60)
            .foregroundStyle(.white)
            .padding(25)
            .background(cardColor, in: Circle())
    }
}


#Preview {
    AddHabitView()
}
