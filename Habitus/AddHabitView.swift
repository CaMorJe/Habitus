//
//  AddHabitView.swift
//  Habitus
//
//  Created by Cauan de Jesus Nascimento de Morais on 17/11/26.
//

import SwiftUI

struct AddHabitView: View {
    var body: some View {
        NavigationStack {
            HabitHorizontalListView(HabitList: Habit.mockHabits)
            Spacer()
        }
        .padding()
    }
}


struct HabitHorizontalListView: View {
    public let HabitList: [Habit]
    @State private var selectedHabit: UUID? = nil
    
    var body: some View {
        Section("Choose the kind of habit you want to add") {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(HabitList) { habit in
                        VStack {
                            Button {
                                handleCardTap(for: habit)
                            } label: {
                                VStack {
                                    habit.icon
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 35, height: 35)
                                        .foregroundStyle(.white)
                                        .padding(25)
                                        .background(cardBackgroundColor(for: habit), in: Circle())
                                    
                                    Text(habit.name)
                                        .font(.headline.bold())
                                        .foregroundStyle(.black)
                                }
                            }
                        }
                    }
                }
            }
            .fixedSize(horizontal: false, vertical: true)
        }
    }
    
    func cardBackgroundColor(for habit: Habit) -> Color {
        guard selectedHabit == habit.id else {
            return .secondary
        }
        return habit.color
    }
    
    func handleCardTap(for habit: Habit) {
        selectedHabit = habit.id
    }
}


#Preview {
    AddHabitView()
}
