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
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button(role: .confirm) {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
            }
        }
        .padding()
    }
}


struct HabitHorizontalListView: View {
    public let HabitList: [Habit]
    var body: some View {
        Section("Choose the kind of habit you want to add") {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(HabitList) { habit in
                        VStack {
                            habitCardView(cardColor: habit.color, cardName: habit.name , cardIcon: habit.icon)
                        }
                    }
                }
            }
            .fixedSize(horizontal: false, vertical: true)
        }
    }
}


struct habitCardView: View {
    var cardColor: Color
    var cardName: String
    var cardIcon: Image
    
    var body: some View {
        Button {
            
        } label: {
            VStack {
                cardIcon
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.white)
                    .padding(25)
                    .background(cardColor, in: Circle())
                
                Text(cardName)
                    .font(.headline.bold())
                    .foregroundStyle(.primary)
            }
        }
    }
}


#Preview {
    AddHabitView()
}
