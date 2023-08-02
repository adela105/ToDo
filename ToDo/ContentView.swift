//
//  ContentView.swift
//  ToDo
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                        .font(.largeTitle)
                }
                
                Spacer()
                
            }
            .padding()
            
            List{
                ForEach (toDoItems) { toDoItem in
                    Text(toDoItem.title)
                        }
            }
        }
        .padding()
        
        if showNewTask {
            NewToDoView(title: "", isImportant: false)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
