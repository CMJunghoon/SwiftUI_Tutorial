//
//  ListNavigation.swift
//  SwiftUI_Tutorial
//
//  Created by vash jung on 2020/05/10.
//  Copyright © 2020 CMJunghoon. All rights reserved.
//

import SwiftUI

struct ToDoItem: Identifiable {
  var id = UUID()
  var task: String
  var imageName: String
}

var listData: [ToDoItem] = [
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
  ToDoItem(task: "Wash My Car", imageName: "trash.circle.fill"),
]


struct ListNavigation: View {
  
  @State var toggleStatus = true
  
  var body: some View {
    NavigationView{
      List {
        Section(header: Text("seciotno1")) {
          Toggle(isOn: $toggleStatus) {
            Text("Toggle Cell")
          }
        }
        
        Section(header: Text("section2")) {
          ForEach(listData) { item in
            HStack {
              Image(systemName: item.imageName)
              Text(item.task)
            }
          }
          .onDelete(perform: deleteItem(at:))
          .onMove(perform: moveItem(from:to:))
          
          Toggle(isOn: $toggleStatus) {
            Text("Toggle Cell")
          }
        }
      }
      .navigationBarTitle(Text("리스트뷰"))
    .navigationBarItems(trailing: EditButton())
    }
    
  }
  
  func moveItem(from source: IndexSet, to destination: Int) {
    
  }
  
  func deleteItem(at offset: IndexSet) {
    
  }
}

struct ListNavigation_Previews: PreviewProvider {
  static var previews: some View {
    ListNavigation()
  }
}
