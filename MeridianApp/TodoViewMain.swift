//
//  TodoViewMain.swift
//  MeridianApp
//
//  Created by Scholar on 7/29/25.
//

//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI
import SwiftData

struct TodoViewMainView: View {
    @State private var showNewTask = false
    @State private var buttonCheck = "🟩"
    @State private var printedToDo = ""
    @State private var isStriked = false
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    Text("To Do List")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .foregroundStyle(Color.white)
                    Spacer()
                    Button {
                        withAnimation {
                            showNewTask = true
                        }
                    } label: {
                        Text("+")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                    }
                } //HStack
                .padding()
                Spacer()
                List {
                    ForEach (toDos) { toDoItem in
                        if toDoItem.isImportant {
                            HStack {
                                Button(buttonCheck) {
                                    print("Hello World")
                                    buttonCheck = "✅"
                                    isStriked.toggle()                                }
                                Text("❗️" + toDoItem.title)
                                    .strikethrough(isStriked, color: .black)
                            }
                        } else {
                            HStack {
                                Button(buttonCheck) {
                                    print("Hello World")
                                    buttonCheck = "✅"
                                    isStriked.toggle()
                                }
                                Text(toDoItem.title)
                                    .strikethrough(isStriked, color: .black)
                            }
                        }
                    }
                    .onDelete(perform: deleteToDo)
                }
                .listStyle(.plain)
            } //VStack
            .background(Color("Cambridge"))
            if showNewTask {
                NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
            }
        } //ZStack
    }
        func deleteToDo(at offsets: IndexSet) {
            for offset in offsets {
                let toDoItem = toDos[offset]
                modelContext.delete(toDoItem)
            }
        } //func
        
    }


#Preview {
    TodoViewMainView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}
