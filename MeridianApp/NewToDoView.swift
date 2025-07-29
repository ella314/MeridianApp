//
//  NewToDoView.swift
//  ToDoListApp
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title2)
                .fontWeight(.semibold)
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .font(.title3)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
                    .font(.title3)
            }
            Button {
                addToDo()
            } label: {
                Text("Save")
                    .padding(10)
                    .background(Color(.green))
                    .cornerRadius(15)
                    .foregroundStyle(Color.white)
            }
        }
        .padding()
    }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }

}

#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
}










